using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class truckdetails : System.Web.UI.Page
{
    SqlConnection cn;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        if (!IsPostBack)
        {
            BindTruckRequests();
        }
    }

    private void BindTruckRequests()
    {

        string userid = Session["U_ID"].ToString(); // login thayel user nu ID

        string qry = @"SELECT tr.TR_ID, tm.FullName, tr.Starting Date, tr.Number Of Trucks
                       FROM TR_REQUEST tr
                       JOIN USER_REGISTRETION tm ON tr.TR_ID = tm.U_ID
                       WHERE tm.U_ID = @U_ID";

        SqlCommand cmd = new SqlCommand(qry, cn);
        cmd.Parameters.AddWithValue("@U_ID", userid);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        gvTrucks.DataSource = dt;
        gvTrucks.DataBind();

    }

    protected void gvTrucks_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
}
