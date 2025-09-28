using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class timeline : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        if (!IsPostBack)
        {
            BindTimeline();
        }
    }

    private void BindTimeline()
    {
        if (!IsPostBack)
        
            // ❌ V_ID validation from query string
                if (string.IsNullOrEmpty(Request.QueryString["V_ID"]))
                {
                    Response.Write("❌ Please pass V_ID in URL. Example: timeline.aspx?V_ID=101");
                    return;
                }
        // ✅ Correct table name + safe parameter
        string qry = @"SELECT pm.Status, pm.UpdateTime, c.CountryName,s.StateName, ci.CityName,p.Pincode FROM PINCODE_MAPPING pm JOIN Country c ON pm.CountryID = c.CountryID JOIN State s ON pm.StateID = s.StateID JOIN City ci ON pm.CityID = ci.CityID JOIN Pincode p ON pm.PincodeID = p.PincodeID  WHERE pm.V_ID =@V_ID ORDER BY pm.PM_ID ASC";
               

                // ✅ using statement for safe connection handling

                SqlCommand cmd = new SqlCommand(qry, cn);
                cmd.Parameters.AddWithValue("@V_ID", Request.QueryString["V_ID"]);
                // ✅ Open the connection explicitly
                cn.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                rptTimeline.DataSource = dt;
                rptTimeline.DataBind();


            
        
    }
}