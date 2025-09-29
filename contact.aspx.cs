using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class contact : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        if (!IsPostBack)
        {
            txtName.Attributes.Add("placeholder", "Your Name");
            txtEmail.Attributes.Add("placeholder", "Your Email");
            txtSubject.Attributes.Add("placeholder", "Subject");
            txtMessage.Attributes.Add("placeholder", "Message");
        }
    }

    
    protected void btnSend_Click(object sender, EventArgs e)
    {
        try
        {
            string query = "INSERT INTO CONTECTUS (Name, Email, Subject, Message) " +
                           "VALUES ('" + txtName.Text + "','" + txtEmail.Text + "','" + txtSubject.Text + "','" + txtMessage.Text + "')";

            SqlCommand cmd = new SqlCommand(query, cn);
            cn.Open();
            int i = cmd.ExecuteNonQuery();
            cn.Close();

            if (i > 0)
            {
                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "Your message has been sent successfully!";
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

