using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_ad_tr_req : System.Web.UI.Page
{
    SqlConnection cn;

   
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

    }
    protected void btnLoadData_Click(object sender, EventArgs e)
    {
        try
        {
            string query = "SELECT USER_NAME, FROM_CITY_NAME, TO_CITY_NAME, TR_STARTDATE, TR_ENDDATE, NO_OF_TRUCK, REMARKS FROM TR_REQUEST";

            SqlCommand cmd = new SqlCommand(query, cn);
           

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            da.Fill(dt);

            GridView1.DataSource = dt;  
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
        }
    }
}