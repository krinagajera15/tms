using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class user_profile : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Assuming you have the logged-in user's ID stored in Session
            if (Session["uid"] != null)
            {
                int userId = Convert.ToInt32(Session["uid"]);
                LoadUserProfile(userId);
                LoadUserBookings(userId);
            }
            else
            {
                // Redirect to login page or show message
                Response.Redirect("registretion.aspx");
            }
        }
    }

    private void LoadUserBookings(int userId)
    {
        string connStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        using (SqlConnection con = new SqlConnection(connStr))
        {
            SqlCommand cmd = new SqlCommand("SELECT name, email, phone FROM register WHERE id = @uid", con);
            cmd.Parameters.AddWithValue("@uid", userId);
            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                lblName.Text = reader["name"].ToString();
                lblEmail.Text = reader["email"].ToString();
                lblPhone.Text = reader["phone"].ToString();
            }
            con.Close();
        }
    }

    private void LoadUserProfile(int userId)
    {
        string connStr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        using (SqlConnection con = new SqlConnection(connStr))
        {
            SqlCommand cmd = new SqlCommand("SELECT name, email, phone, profile_photo FROM register WHERE id = @uid", con);
            cmd.Parameters.AddWithValue("@uid", userId);
            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                lblName.Text = reader["name"].ToString();
                lblEmail.Text = reader["email"].ToString();
                lblPhone.Text = reader["phone"].ToString();

                string photoPath = reader["profile_photo"] == DBNull.Value ? null : reader["profile_photo"].ToString();

                if (!string.IsNullOrEmpty(photoPath))
                {
                    imgProfile.ImageUrl = "~/img/user_photos/" + photoPath;
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