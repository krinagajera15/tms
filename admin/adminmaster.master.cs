using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class admin_adminmaster : System.Web.UI.MasterPage
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {

        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        if (!IsPostBack)
        {
            if (Session["Email"] != null)
            {
                string Email = Convert.ToString(Session["Email"]);
                //LoadVendorBids(V_ID);
                if (Session["FullName"] != null && Session["Email"] != null)
                {
                    lblWelcome.Text = "Welcome, " + Session["FullName"].ToString();
                    lnkLogout.Visible = true;
                }
                //else
                //{
                //    lblWelcome.Text = "";
                //    lnkLogout.Visible = false;
                //}
            }
            else
            {
                Response.Redirect("~/admin/login.aspx");
            }
        }
    }

    //private void LoadVendorBids(int v_ID)
    //{
    //    throw new NotImplementedException();
    //}

    protected void lnkLogout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Response.Redirect("~/admin/login.aspx");
    }
}