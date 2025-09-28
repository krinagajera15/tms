using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_about : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    }

 
    protected void btnSave_Click2(object sender, EventArgs e)
    {
        try
        {
            string query = "INSERT INTO AboutContent (SubTitle, Title, Description, ImageUrl, ButtonText, ButtonUrl) " +
                           "VALUES ('" + txtSubTitle.Text + "','" + txtTitle.Text + "','" + txtDescription.Text + "','" + txtImageUrl.Text + "','" + txtButtonText.Text + "','" + txtButtonUrl.Text + "')";

            SqlCommand cmd = new SqlCommand(query, cn);

            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();

            lblMsg.Text = "✅ Data inserted successfully!";

            // clear textbox values
            txtSubTitle.Text = "";
            txtTitle.Text = "";
            txtDescription.Text = "";
            txtImageUrl.Text = "";
            txtButtonText.Text = "";
            txtButtonUrl.Text = "";
        }
        catch (Exception ex)
        {
            lblMsg.Text = "❌ Error: " + ex.Message;
        }
    }
}
