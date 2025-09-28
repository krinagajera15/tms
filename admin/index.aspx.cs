using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_index : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        if (!IsPostBack)
        {
            BindStatsTable();
            BindBidCounts();
        }
    }

    private void BindStatsTable()
    {

        DataTable dt = new DataTable();
        dt.Columns.Add("SrNo");
        dt.Columns.Add("Item");
        dt.Columns.Add("Last");
        dt.Columns.Add("Current");

        // Example "Last" values (demo mate fixed rakha)
        int lastUsers = 100;
        int currentUsers = GetCount("SELECT COUNT(*) FROM USER_REGISTRETION");

        int lastVendors = 50;
        int currentVendors = GetCount("SELECT COUNT(*) FROM VENDOR_MASTER");

        int lastRequests = 200;
        int currentRequests = GetCount("SELECT COUNT(*) FROM TR_REQUEST");

        int lastBids = 300;
        int currentBids = GetCount("SELECT COUNT(*) FROM BID_DETAILS");

        // Add Rows
        AddRow(dt, 1, "Users", lastUsers, currentUsers);
        AddRow(dt, 2, "Vendors", lastVendors, currentVendors);
        AddRow(dt, 3, "Truck Requests", lastRequests, currentRequests);
        AddRow(dt, 4, "Bids", lastBids, currentBids);

        gvStats.DataSource = dt;
        gvStats.DataBind();
    }

    private int GetCount(string query)
    {
        SqlCommand cmd = new SqlCommand(query, cn);
        cn.Open();
        int count = Convert.ToInt32(cmd.ExecuteScalar());
        cn.Close();
        return count;
    }

    private void AddRow(DataTable dt, int srNo, string item, int last, int current)
    {
        DataRow row = dt.NewRow();
        row["SrNo"] = srNo;
        row["Item"] = item;
        row["Last"] = last;
        row["Current"] = current;
        dt.Rows.Add(row);
    }

    private void BindBidCounts()
    {
        using (cn)
        {
            string qry = " SELECT SUM(CASE WHEN status = 'Approved' THEN 1 ELSE 0 END) AS ApprovedCount, SUM(CASE WHEN status = 'Pending' THEN 1 ELSE 0 END) AS PendingCount, SUM(CASE WHEN status = 'Rejected' THEN 1 ELSE 0 END) AS RejectedCount FROM BID_DETAILS";

            SqlCommand cmd = new SqlCommand(qry, cn);
            cn.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                lblApproved.Text = dr["ApprovedCount"].ToString();
                lblPending.Text = dr["PendingCount"].ToString();
                lblRejected.Text = dr["RejectedCount"].ToString();
            }

            dr.Close();
        }
    }
}