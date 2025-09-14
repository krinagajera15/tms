using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Vendor_new_bid : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
    } 
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string status = "";

        // Check karvo
        if (chkConfirm.Checked)
        {
            status = "Approved";
        }
        else
        {
            status = "Rejected";
        }

        string query = "INSERT INTO BID_DETAILS1 (V_ID, TR_ID, NO_OF_TRUCK, STATUS) " +
                       "VALUES ('" + ddlvid.SelectedValue + "','" + ddltrid.SelectedValue + "','" + ddlnoftr.SelectedValue + "','" + status + "')";

        SqlCommand cmd = new SqlCommand(query, cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();

        if (status == "Approved")
        {
            // only approved hoy to next page par jase
            Response.Redirect("BidDetails.aspx?TR_ID=" + ddltrid.SelectedValue);
        }
        else
        {
            // rejected hoy to same page par message show karse
            lblMessage.Text = "Your bid has been rejected!";
            lblMessage.ForeColor = System.Drawing.Color.Red;
        }
    }
}