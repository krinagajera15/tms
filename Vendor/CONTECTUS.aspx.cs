using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Vendor_CONTECTUS : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    }

    protected void btnSend_Click(object sender, EventArgs e)
    {
        try
        {
            string query = "INSERT INTO VENDOR_CONTECT (Name, Email, Subject, Message) " +
                           "VALUES ('" + txtName.Text + "','" + txtEmail.Text + "','" + txtSubject.Text + "','" + txtMessage.Text + "')";

            SqlCommand cmd = new SqlCommand(query, cn);
            cn.Open();
            int i = cmd.ExecuteNonQuery();
            cn.Close();

            if (i > 0)
            {
                Response.Write("<script>alert('Your message has been sent successfully!');</script>");

                //lblMessage.ForeColor = System.Drawing.Color.Green;
                //lblMessage.Text = "Your message has been sent successfully!";
                ClearFields();
            }
            else
            {
                lblMessage.Text = "Failed to send message.";
            }
        }
        catch (Exception ex)
        {
            lblMessage.Text = "Error: " + ex.Message;
        }
    }

    private void ClearFields()
    {
        txtName.Text = "";
        txtEmail.Text = "";
        txtSubject.Text = "";
        txtMessage.Text = "";
    }
}
