using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_total_count : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        if (!IsPostBack)
        {
            BindBidCounts();
        }
    }

    private void BindBidCounts()
    {
        using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString))
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