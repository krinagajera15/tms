using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Vendor_registretion : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {

        try

        {
            string Email = txtEmail.Text.Trim();
            string FullName = txtFullName.Text.Trim();
            string Password = txtPassword.Text.Trim();
            string MobileNumber = txtMobile.Text.Trim();

            string query = "INSERT INTO VENDOR_MASTER (Email,FullName,Password,MOBILE_NUMBER, PHOTO) VALUES ('" + Email + "','" + FullName + "','" + Password + "','" + MobileNumber + "','" + prophoto.FileName + "')";
            //Response.Write("INSERT INTO VENDOR_MASTER (Email,FullName,Password,MOBILE_NUMBER, PHOTO) VALUES ('" + Email + "','" + FullName + "','" + Password + "','" + MobileNumber + "','" + prophoto.FileName + "')");
            SqlCommand cmd = new SqlCommand(query, cn);

            cn.Open();
            int i = cmd.ExecuteNonQuery();

            cn.Close();
            if (i > 0)
            {
                ClearFields();
                if (prophoto.HasFile)
                    prophoto.SaveAs(Server.MapPath("~/profile_photo/") + "//" + prophoto.FileName);
                Response.Redirect("~/Vendor/vendor_login.aspx");

            }
            else
            {
                Response.Write("<script>aletr('something wrong')</script>");
            }


        }
        catch (Exception ex)
        {

            Response.Write("<script>alert('Error:" + ex.Message + "');</script>");
        }
    }

    private void ClearFields()
    {
        txtEmail.Text = "";
        txtFullName.Text = "";
        txtPassword.Text = "";
        txtMobile.Text = "";
    }

   
}

