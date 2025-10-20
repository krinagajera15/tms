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
        //BindAbout();
    }
    //private void BindAbout()
    //{
    //    string qry = "SELECT * FROM AboutContent";
    //    SqlDataAdapter da = new SqlDataAdapter(qry, cn);
    //    DataTable dt = new DataTable();
    //    da.Fill(dt);

    //    rptAbout.DataSource = dt;
    //    rptAbout.DataBind();
    //}

}