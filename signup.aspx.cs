using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class De1reg : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            // Get connection string from Web.config


            //using (SqlConnection con = new SqlConnection(con)) 
            //{
            string UserName = txtUserName.Text.Trim();
            string Password = txtPassword.Text.Trim();
            string Email = txtEmail.Text.Trim();
            string Country = DropDownList11.SelectedValue;
            string State = DropDownList12.SelectedValue;
            string City = DropDownList1.SelectedValue;
           

            string query = "INSERT INTO REGISTRETION (UserName, Password, Email,Country,State,City) VALUES ('" + UserName + "','" + Password+ "','" + Email+ "','" + Country + "','" + State + "','" + City + "')";
            SqlCommand cmd = new SqlCommand(query, cn);

            cn.Open();
            int i = cmd.ExecuteNonQuery();

            cn.Close();
            if (i > 0)
            {
                ClearFields();
                Response.Redirect("signin.aspx");
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
        txtUserName.Text = "";
        txtPassword.Text = "";
        txtEmail.Text = "";
        DropDownList11.SelectedValue = "";
        DropDownList12.SelectedValue = "";
        DropDownList11.SelectedValue = "";

    }
}
