using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class usermaster : System.Web.UI.MasterPage
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        if (!IsPostBack)
        {
            
            if (Session["FullName"] != null && Session["U_ID"] != null)
                {
                    lblWelcome.Text = "Welcome, " + Session["FullName"].ToString();
                    lnkLogout.Visible = true;
                    lnkLogin.Visible = false;
                    LinkButton1.Visible = true;
                }
                else
                {
                    lblWelcome.Text = "";
                    lnkLogout.Visible = false;
                    lnkLogin.Visible = true;
                    LinkButton1.Visible = false;
                   
                }
            }
        
    }

    protected void lnkLogout_Click1(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Response.Redirect("index.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
}
