using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string email = txtEmail.Text.Trim();
        string password = txtPassword.Text.Trim();
        


        string query = "SELECT U_ID,Email,FullName,Password FROM USER_REGISTRETION WHERE Email = '" + email + "' AND Password = '" + password + "'";

        SqlCommand cmd = new SqlCommand(query, cn);

        try
        {
            cn.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            { 
                string U_ID = dr["U_ID"].ToString();
                Session["U_ID"] = U_ID;
                Session["FullName"] = dr["FullName"].ToString();
                Session["UserEmail"] = email;
                Response.Redirect("index.aspx?U_ID="+ U_ID);


            }
            else
            {
                Response.Write("<script>alert('Invalid Email or Password!');</script>");
            }
            cn.Close();

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Error:" + ex.Message + "');</script>");
        }

    }
}