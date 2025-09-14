using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class admin_showbid : System.Web.UI.Page
{
    string cs = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadTruckRequests();
        }
    }

    private void LoadTruckRequests()
    {
        using (SqlConnection cn = new SqlConnection(cs))
        {
            string query = "SELECT TR_ID FROM TR_REQUEST";
            SqlCommand cmd = new SqlCommand(query, cn);
            cn.Open();
            ddltrid.DataSource = cmd.ExecuteReader();
            ddltrid.DataTextField = "TR_ID";
            ddltrid.DataValueField = "TR_ID";
            ddltrid.DataBind();
        }
    }

    protected void btnLoad_Click(object sender, EventArgs e)
    {
        using (SqlConnection cn = new SqlConnection(cs))
        {
            string query = "SELECT TR_ID FROM TR_REQUEST";
            SqlCommand cmd = new SqlCommand(query, cn);
            cn.Open();
            ddltrid.DataSource = cmd.ExecuteReader();
            ddltrid.DataTextField = "TR_ID";
            ddltrid.DataValueField = "TR_ID";
            ddltrid.DataBind();
        }
    }

    protected void btnApprove_Click(object sender, EventArgs e)
    {
        if (ddltrid.SelectedIndex <= 0)
        {
            lblMessage.Text = "Please select a Truck Request!";
            return;
        }

        int trId = Convert.ToInt32(ddltrid.SelectedValue);

        using (SqlConnection cn = new SqlConnection(cs))
        {
            cn.Open();

            // 1. Lowest RatePerTruck vendor select
            string query = @"SELECT TOP 1 V_ID FROM BID_DETAILS 
                             WHERE TR_ID=@TR_ID
                             ORDER BY CAST(BidAmount AS decimal)/NULLIF(NoOfTrucks,0) ASC";

            SqlCommand cmd = new SqlCommand(query, cn);
            cmd.Parameters.AddWithValue("@TR_ID", trId);
            object result = cmd.ExecuteScalar();

            if (result == null)
            {
                lblMessage.Text = "No bids found for this Truck Request!";
                return;
            }

            int lowestVendorId = Convert.ToInt32(result);

            // 2. Sab vendors ne Reject karo
            string rejectQuery = "UPDATE BID_DETAILS SET Status='Rejected' WHERE TR_ID=@TR_ID";
            SqlCommand rejectCmd = new SqlCommand(rejectQuery, cn);
            rejectCmd.Parameters.AddWithValue("@TR_ID", trId);
            rejectCmd.ExecuteNonQuery();

            // 3. Lowest bid vendor ne Approve karo
            string approveQuery = "UPDATE BID_DETAILS SET Status='Approved' WHERE TR_ID=@TR_ID AND V_ID=@V_ID";
            SqlCommand approveCmd = new SqlCommand(approveQuery, cn);
            approveCmd.Parameters.AddWithValue("@TR_ID", trId);
            approveCmd.Parameters.AddWithValue("@V_ID", lowestVendorId);
            approveCmd.ExecuteNonQuery();


        }

        // Grid reload
        btnLoad_Click(null, null);
    }

    protected void gvBids_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
