using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class admin_cutoffmaster : System.Web.UI.Page
{
    SqlConnection cn;

    private string fromCity;
    private string toCity;
    private string CUTOFF_TIME;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            string fromCity = DropDownList1.SelectedValue;
            string toCity = DropDownList2.SelectedValue;
            string cutoffTime = txtCutoff.Text.Trim();
            int status = chkStatus.Checked ? 1 : 0;

            string query = "INSERT INTO CUTTOF_MASTER (FROM_CITY_NAME, TO_CITY_NAME, CUTOFF_TIME, STATUS) " +
                           "VALUES ('" + fromCity + "', '" + toCity + "', '" + cutoffTime + "', " + status + ")";

            SqlCommand cmd = new SqlCommand(query, cn);
            cn.Open();
            int i = cmd.ExecuteNonQuery();
            cn.Close();

            if (i > 0)
            {
                lblMessage.Text = "Cutoff saved successfully!";
                ClearFields();
            }
            else
            {
                lblMessage.Text = "Insert failed.";
            }
        }
        catch (Exception ex)
        {
            lblMessage.Text = "Error: " + ex.Message;
        }
    }

    private void ClearFields()
    {
        DropDownList1.SelectedValue = "";
        DropDownList2.SelectedValue = "";
        txtCutoff.Text= "";
        chkStatus.Checked = false;

    }
}