using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Vendor_venodrmaster : System.Web.UI.MasterPage
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        if (!IsPostBack)
        {

            if (Session["FullName"] != null && Session["V_ID"] != null)
            {
                lblWelcome.Text = "Welcome, " + Session["FullName"].ToString();
                lnkLogout.Visible = true;
                lnkLogin.Visible = false;
               
            }
            else
            {
                lblWelcome.Text = "";
                lnkLogout.Visible = false;
                lnkLogin.Visible = true;
               

            }
        }
    }

    protected void lnkLogout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Response.Redirect("~/Vendor/index.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
}
