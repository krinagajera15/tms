using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_services : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            string query = "INSERT INTO Services (Title, Description, ImageUrl, LinkUrl) VALUES (@Title, @Description, @ImageUrl, @LinkUrl)";
            SqlCommand cmd = new SqlCommand(query, cn);
            cmd.Parameters.AddWithValue("@Title", txtTitle.Text.Trim());
            cmd.Parameters.AddWithValue("@Description", txtDescription.Text.Trim());
            cmd.Parameters.AddWithValue("@ImageUrl", txtImageUrl.Text.Trim());
            cmd.Parameters.AddWithValue("@LinkUrl", txtLinkUrl.Text.Trim());

            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();

            lblMsg.Text = "✅ Service added successfully!";
            lblMsg.ForeColor = System.Drawing.Color.Green;

            // clear fields
            txtTitle.Text = "";
            txtDescription.Text = "";
            txtImageUrl.Text = "";
            txtLinkUrl.Text = "";
        }
        catch (Exception ex)
        {
            lblMsg.Text = "❌ Error: " + ex.Message;
            lblMsg.ForeColor = System.Drawing.Color.Red;
        }
    }
}