using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class admin_pincode : System.Web.UI.Page
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
        string query = "SELECT CityID, CityName FROM City";
        SqlCommand cmd = new SqlCommand(query, cn);
        cn.Open();
        ddlstate.DataSource = cmd.ExecuteReader();
        ddlstate.DataTextField = "CityName";
        ddlstate.DataValueField = "CityID";
        ddlstate.DataBind();
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        string Pincode = txtpin.Text.Trim();
        int CityID = int.Parse(ddlstate.SelectedValue);
        bool Status = chkStatus.Checked;

        string query = "INSERT INTO Pincode (Pincode, CityID,Status) VALUES (@Pincode, @CityID, @Status)";
        SqlCommand cmd = new SqlCommand(query, cn);
        cmd.Parameters.AddWithValue("@Pincode", Pincode);
        cmd.Parameters.AddWithValue("@CityID", CityID);
        cmd.Parameters.AddWithValue("@Status", Status);

        cn.Open();
        cmd.ExecuteNonQuery();
        lblMessage.Text = "State saved successfully.";
        txtpin.Text = "";
    }
}