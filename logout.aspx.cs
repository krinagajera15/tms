using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Clear session variables
        Session.Clear();
        Session.Abandon();

        // Optional: Also clear cookies if you store auth info in cookies
        Response.Cookies.Clear();
        Response.Redirect("signin.aspx");
    }
}