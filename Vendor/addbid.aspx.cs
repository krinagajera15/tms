using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Vendor_addbid : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        if (Session["V_ID"] != null)
        {
            ddlvid.Text = Session["V_ID"].ToString();
            ddlvid.Enabled = false;  // Make the username field readonly
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (!chkConfirm.Checked)
        {
            lblMessage.Text = "Please confirm before submitting bid!";
            lblMessage.ForeColor = System.Drawing.Color.Red;
            return;
        }

        int trId = Convert.ToInt32(ddltrid1.SelectedValue);
        int vId = Convert.ToInt32(ddlvid.Text);
        int noOfTrucks = Convert.ToInt32(ddlnoftr.SelectedValue);
        decimal bidAmount = Convert.ToDecimal(txtBidAmount.Text);

        cn.Open();

        //// 1. check bidding window
        //string qry = "SELECT TR_STARTDATE, TR_ENDDATE FROM TR_REQUEST WHERE TR_ID='" + trId + "'";
        //SqlCommand cmd = new SqlCommand(qry, cn);
        //SqlDataReader dr = cmd.ExecuteReader();
        //if (!dr.Read())
        //{
        //    lblMessage.Text = "Invalid Truck Request!";
        //    dr.Close(); cn.Close(); return;
        //}
        //DateTime start = dr["TR_STARTDATE"] != DBNull.Value ? Convert.ToDateTime(dr["TR_STARTDATE"]) : DateTime.MaxValue;
        //DateTime end = dr["TR_ENDDATE"] != DBNull.Value ? Convert.ToDateTime(dr["TR_ENDDATE"]) : DateTime.MaxValue;

        //dr.Close();

        //if (DateTime.Now < start || DateTime.Now > end)
        //{
        //    lblMessage.Text = "Bidding time is closed!";
        //    lblMessage.ForeColor = System.Drawing.Color.Red;
        //    cn.Close();
        //    return;
        //}
        // 2. check existing bid
        string qery = "SELECT COUNT(*) FROM BID_DETAILS WHERE TR_ID='" + trId + "' AND V_ID='" + vId + "'";
        SqlCommand cCmd = new SqlCommand(qery, cn);
        int count = (int)cCmd.ExecuteScalar();

        if (count == 0)
        {
            // Insert new bid
            string iqry = "INSERT INTO BID_DETAILS (TR_ID, V_ID, BidAmount, NoOfTrucks) VALUES ('" + trId + "', '" + vId + "', '" + bidAmount + "','" + noOfTrucks + "')";
            SqlCommand icmd = new SqlCommand(iqry, cn);
            icmd.ExecuteNonQuery();

            Response.Write("<script>alert('Bid submitted successfully!');</script>");
            //lblMessage.Text = "Bid submitted successfully!";
            //lblMessage.ForeColor = System.Drawing.Color.Green;
        }
        else
        {
            string uqry = "UPDATE BID_DETAILS SET BidAmount='" + bidAmount + "', NoOfTrucks='" + noOfTrucks + "' WHERE TR_ID='" + trId + "' AND V_ID='" + vId + "'";
            SqlCommand uCmd = new SqlCommand(uqry, cn);
            uCmd.ExecuteNonQuery();

            Response.Write("<script>alert('Bid updated successfully!');</script>");
            //lblMessage.Text = "Bid updated successfully!";
            //lblMessage.ForeColor = System.Drawing.Color.Orange;
        }

        cn.Close();
        //Response.Redirect("~/Vendor/timeline.aspx?V_ID="+ vId);
    }
}