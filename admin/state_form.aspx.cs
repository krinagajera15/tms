using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_state_form : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);


        if (!IsPostBack)
        {
            LoadCountries();
        }
    }

    private void LoadCountries()
    {
        string query = "SELECT CountryID, CountryName FROM Country";
        SqlCommand cmd = new SqlCommand(query, cn);
        cn.Open();
        ddlCountry.DataSource = cmd.ExecuteReader();
        ddlCountry.DataTextField = "CountryName";
        ddlCountry.DataValueField = "CountryID";
        ddlCountry.DataBind();
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        string State = txtState.Text.Trim();
        int countryId = int.Parse(ddlCountry.SelectedValue);
        bool Status = chkStatus.Checked;
        string query = "INSERT INTO State (StateName, CountryID,Status) VALUES (@StateName, @CountryID, @Status)";
        SqlCommand cmd = new SqlCommand(query, cn);
        cmd.Parameters.AddWithValue("@StateName", State);
        cmd.Parameters.AddWithValue("@CountryID", countryId);
        cmd.Parameters.AddWithValue("@Status", Status);
        cn.Open();
        cmd.ExecuteNonQuery();
        lblMessage.Text = "State saved successfully.";
        txtState.Text = "";
    }
}