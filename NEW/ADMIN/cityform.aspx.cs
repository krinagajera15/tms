using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class admin_cityform : System.Web.UI.Page
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
        string query = "SELECT StateID, StateName FROM State";
        SqlCommand cmd = new SqlCommand(query, cn);
        cn.Open();
        ddlstate.DataSource = cmd.ExecuteReader();
        ddlstate.DataTextField = "StateName";
        ddlstate.DataValueField = "StateID";
        ddlstate.DataBind();
        cn.Close();
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        string CityName = txtcty.Text.Trim();
        int StateID = int.Parse(ddlstate.SelectedValue);
        bool Status = chkStatus.Checked;

        string query = "INSERT INTO City (CityName, StateID,Status) VALUES (@CityName, @StateID, @Status)";
        SqlCommand cmd = new SqlCommand(query, cn);
        cmd.Parameters.AddWithValue("@CityName", CityName);
        cmd.Parameters.AddWithValue("@StateID", StateID);
        cmd.Parameters.AddWithValue("@Status", Status);

        cn.Open();
        cmd.ExecuteNonQuery();
        lblMessage.Text = "State saved successfully.";
        txtcty.Text = "";
        cn.Close();
        
    }
}