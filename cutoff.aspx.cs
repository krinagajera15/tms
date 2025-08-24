using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class cutoff : System.Web.UI.Page
{
    SqlConnection cn;
    
    private string fromCity;
    private string toCity;
    private string CUTOFF_TIME;

    //public string FROM_CITY_NAME { get; private set; }
    //public string STATUS { get; private set; }
    //public string TO_CITY_NAME { get; private set; }

    //private string TO_CITY_NAME;

    //private string STATUS;

    //public string FROM_CITY_NAME { get; private set; }

    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

        if (!IsPostBack)
        {
            // Hours 1 to 12
            for (int i = 1; i <= 12; i++)
            {
                ddlHour.Items.Add(i.ToString("D2"));
            }

            // Minutes 0 to 59
            for (int i = 0; i < 60; i++)
            {
                ddlMinute.Items.Add(i.ToString("D2"));
            }
        }

    }
    
    protected void btnSave_Click(object sender, EventArgs e)
    {
        string hour = ddlHour.SelectedValue;
        string minute = ddlMinute.SelectedValue;
        string ampm = ddlAmPm.SelectedValue;
        string status = ddlStatus.SelectedValue;


        string cutoffTime = hour + ":" + minute + " " + ampm;

  
        string query = "INSERT INTO CUTOFF_MASTER (FROM_CITY_NAME, TO_CITY_NAME, CUTOFF_TIME, STATUS) " +
                   "VALUES ('" + FROM_CITY_NAME + "','" + TO_CITY_NAME + "','" + CUTOFF_TIME + "','" + STATUS + "')";

        SqlCommand cmd = new SqlCommand(query, cn);

        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();

        Response.Write("<script>alert('cutoff data insterted Successfully');</script>");
    }
}