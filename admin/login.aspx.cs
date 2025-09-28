using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class admin_login : System.Web.UI.Page
{
    SqlConnection cn; 
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string Email = txtEmail.Text.Trim();
        string password = txtPassword.Text.Trim();



        string query = "SELECT * FROM USER_REGISTRETION WHERE (Email='krina@gmail.com' or Email='prinjal@gmail.com') AND Password = '" + password + "'";

        SqlCommand cmd = new SqlCommand(query, cn);

        try
        {
            cn.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Session["U_ID"] = dr["U_ID"].ToString();
                Session["FullName"] = dr["FullName"].ToString();
                Session["Email"] = dr["Email"].ToString();
                Response.Redirect("index.aspx");

            }
            else
            {
                Response.Write("<script>alert('Invalid Email or Password!');</script>");
                Response.Redirect("~/admin/index.aspx");
            }
            cn.Close();

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Error:" + ex.Message + "');</script>");
        }

    }
}
