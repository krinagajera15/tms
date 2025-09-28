using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class Vendor_drivervehical : System.Web.UI.Page
{
    SqlConnection cn;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        if (Session["V_ID"] != null)
        {
            txtvid.Text = Session["V_ID"].ToString();
            txtvid.Enabled = false;  // Make the username field readonly
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            int TR_ID = Convert.ToInt32(Request.QueryString["TR_ID"]);
            string V_ID = txtvid.Text.Trim();
            string driverName = txtDriverName.Text.Trim();
            string vehicleNo = txtVehicleNo.Text.Trim();
            string driverContact = txtDriverContact.Text.Trim();

            if (driverName == "" || vehicleNo == "" || driverContact == "")
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "⚠ Please fill all fields!";
                return;
            }

            string query = "INSERT INTO VEHICAL_DRIVER_DETAILS (TR_ID,V_ID,DriverName, VehicleNo, DriverContact) " +
                           "VALUES ('" + TR_ID + "','" + V_ID + "','" + driverName + "','" + vehicleNo + "','" + driverContact + "')";
            Response.Write(query);
            SqlCommand cmd = new SqlCommand(query, cn);

            cn.Open();
            int i = cmd.ExecuteNonQuery();
            cn.Close();

            if (i > 0)
            {
                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "✅ Driver & Vehicle details saved successfully!";
                Response.Redirect("~/Vendor/timeline.aspx?V_ID="+ V_ID);
                ClearFields();
            }
            else
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "❌ Something went wrong!";
            }
        }
        catch (Exception ex)
        {
            lblMessage.ForeColor = System.Drawing.Color.Red;
            lblMessage.Text = "Error: " + ex.Message;
        }
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        ClearFields();
        lblMessage.Text = "";
    }
    private void ClearFields()
    {
        txtvid.Text = "";
        txtDriverName.Text = "";
        txtVehicleNo.Text = "";
        txtDriverContact.Text = "";
    }
}