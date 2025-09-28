using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class about : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

    }
    private void BindAbout()
    {
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM AboutContent", cn);
        DataTable dt = new DataTable();
        da.Fill(dt);

        rptAbout.DataSource = dt;
        rptAbout.DataBind();
    }

}