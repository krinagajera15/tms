using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class service : System.Web.UI.Page
{
    SqlConnection cn;   
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        if (!IsPostBack)
        {
            BindServices();
            
        }
    }
    private void BindServices()
    {
        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Services", cn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        rptServices.DataSource = dt;
        rptServices.DataBind();
    }

   
}