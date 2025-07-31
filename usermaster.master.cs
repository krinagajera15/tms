using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class usermaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
            if (Session["FullName"] != null)
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
        //}
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
