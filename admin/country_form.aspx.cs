using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_country_form : System.Web.UI.Page
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
            string CountryName = txtCountry.Text.Trim();
            bool Status = chkStatus.Checked;

            string query = "INSERT INTO Country (CountryName,Status) VALUES ('" + CountryName + "','" + Status + "')";
            SqlCommand cmd = new SqlCommand(query, cn);
            cn.Open();
            int i = cmd.ExecuteNonQuery();

            cn.Close();

            if (i > 0)
            {
                ClearFields();
                lblMessage.Text = "Country saved successfully.";
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
        txtCountry.Text = "";
        chkStatus.Checked = false;
    }
}
