using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;



public partial class userprofile : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Assuming you have the logged-in user's ID stored in Session
            if (Session["U_ID"] != null)
            {
                int userId = Convert.ToInt32(Session["U_ID"]);
                LoadUserProfile(userId);
                LoadUserBookings(userId);
            }
            else
            {
                // Redirect to login page or show message
                Response.Redirect("signin.aspx");
            }
        }
    }

    private void LoadUserBookings(int userId)
    {
        string connStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        using (SqlConnection con = new SqlConnection(connStr))
        {
            SqlCommand cmd = new SqlCommand("SELECT name, Email, MobileNumber FROM USER_REG WHERE id = @U_ID", con);
            cmd.Parameters.AddWithValue("@U_ID", userId);
            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                lblName.Text = reader["name"].ToString();
                lblEmail.Text = reader["Email"].ToString();
                lblPhone.Text = reader["MobileNumber"].ToString();
            }
            con.Close();
        }
    }

    private void LoadUserProfile(int userId)
    {
        string connStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        using (SqlConnection con = new SqlConnection(connStr))
        {
            SqlCommand cmd = new SqlCommand("SELECT name, Email, MobileNumber,Profile_Photo FROM USER_REG WHERE id = @U_ID", con);
            cmd.Parameters.AddWithValue("@U_ID", userId);
            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                lblName.Text = reader["name"].ToString();
                lblEmail.Text = reader["Email"].ToString();
                lblPhone.Text = reader["MobileNumber"].ToString();

                string photoPath = reader["Profile_Photo"] == DBNull.Value ? null : reader["Profile_Photo"].ToString();

                if (!string.IsNullOrEmpty(photoPath))
                {
                    imgProfile.ImageUrl = "~/img/profile_photo/" + photoPath;
                }
                else
                {
                    imgProfile.ImageUrl = "~/img/user.png";  // Default image
                }

                imgProfile.Visible = true;
            }
            con.Close();
        }
    }
}
