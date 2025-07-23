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
        //    if (Session["UserEmail"] != null)
        //    {
        //        // Login thay gayu che
        //        phUserLinks.Visible = true;
        //        phGuestLinks.Visible = false;
        //        lblUserName.Text = Session["UserEmail"].ToString(); // athva Session["UserName"]
        //    }
        //    else
        //    {
        //        // Login nathi thayu
        //        phUserLinks.Visible = false;
        //        phGuestLinks.Visible = true;

        //    }
        //    lblUserName.Text = Session["UserEmail"].ToString();
        //}
        if (!IsPostBack)
        {
            // OPTIONAL: Show welcome message if user is logged in
            if (Session["UserEmail"] != null)
            {
                lblWelcome.Text = "Welcome, " + Session["UserEmail"].ToString();
            }
        }
    }
        

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        //Session.Clear();             // sessions ખાલી કરો
        //Session.Abandon();           // completely remove session
        //Response.Redirect("signin.aspx");  // back to login page
    }

    protected void lnkLogout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Response.Redirect("signin.aspx");
    }
}
