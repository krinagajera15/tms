using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;

public partial class Vendor_showbidditeil : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        if (!IsPostBack)
        {
            if (Session["V_ID"] != null)
            {
                int V_ID = Convert.ToInt32(Session["V_ID"]);
                LoadVendorBids(V_ID);
            }
            else
            {
                Response.Redirect("vendor_login.aspx");
            }
        }
    }

    private void LoadVendorBids(int V_ID)
    {
        using (cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString))
        {
            string query = @"SELECT B.TR_ID, B.BidAmount, B.NoOfTrucks, 
                                    ISNULL(B.Status,'Pending') AS Status
                             FROM BID_DETAILS B
                             WHERE B.V_ID = @V_ID";

            SqlCommand cmd = new SqlCommand(query, cn);
            cmd.Parameters.AddWithValue("@V_ID", V_ID);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            gvVendorBids.DataSource = dt;
            gvVendorBids.DataBind();

            lblMessage.Text = dt.Rows.Count == 0 ? "No bids submitted yet!" : "";
        }
    }

    private void SendStatusEmail(string toEmail, string status, string bidId)
    {
        string subject = "Bid Status Update";
        string body = "";

        if (status == "Approved")
        {
            body = $"Dear Vendor,<br/><br/>Your bid (ID: <b>{bidId}</b>) has been <b style='color:green;'>Approved ✅</b>.<br/><br/>Regards,<br/>Transport Management System";
        }
        else if (status == "Rejected")
        {
            body = $"Dear Vendor,<br/><br/>Your bid (ID: <b>{bidId}</b>) has been <b style='color:red;'>Rejected ❌</b>.<br/><br/>Regards,<br/>Transport Management System";
        }

        try
        {
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("yourgmail@gmail.com", "TMS Notification"); // ✅ your sender mail
            msg.To.Add(toEmail);
            msg.Subject = subject;
            msg.Body = body;
            msg.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            smtp.EnableSsl = true;
            smtp.Credentials = new NetworkCredential("yourgmail@gmail.com", "YOUR_APP_PASSWORD"); // ✅ use app password
            smtp.Send(msg);
        }
        catch (Exception ex)
        {
            // Handle error if needed
        }
    }


    protected void gvVendorBids_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            string status = DataBinder.Eval(e.Row.DataItem, "Status").ToString();
            Button btnAddVehicle = (Button)e.Row.FindControl("btnAddVehicle");

            if (status == "Approved")
            {
                btnAddVehicle.Visible = true;

            }
            else
            {
                btnAddVehicle.Visible = false;
            }
        }
    }
    protected void gvVendorBids_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "AddVehicle")
        {
            int trId = Convert.ToInt32(e.CommandArgument);
            Response.Redirect("~/Vendor/drivervehical.aspx?TR_ID=" + trId);
        }
    }

    
}
