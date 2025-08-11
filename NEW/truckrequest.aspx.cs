using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class quote : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        if (Session["FullName"] != null)
        {
            txtid.Text = Session["FullName"].ToString();
            txtid.Enabled = false;  // Make the username field readonly
        }
        string today = DateTime.Now.ToString("yyyy-MM-dd");
        txtsdate.Attributes["max"] = today;
        //txtedate.Attributes["max"] = today;
        txtsdate.Attributes["min"] = today;
        txtedate.Attributes["min"] = today;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            string USER_NAME = txtid.Text.Trim();
            string FROM_CITY_NAME = txtfcity.Text.Trim();
            string TO_CITY_NAME = txtcity.Text.Trim();
            string TR_STARTDATE = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            string TR_ENDDATE = DateTime.Now.AddDays(7).ToString("yyyy-MM-dd HH:mm:ss");
            string NO_OF_TRUCK = Textbox1.Text.Trim();
            string REMARKS = Textbox2.Text.Trim();



            string query = "INSERT INTO TR_REQUEST (USER_NAME, FROM_CITY_NAME, TO_CITY_NAME, TR_STARTDATE, TR_ENDDATE, NO_OF_TRUCK, REMARKS) VALUES('" + USER_NAME + "','" + FROM_CITY_NAME + "','" + TO_CITY_NAME + "','" + TR_STARTDATE + "','" + TR_ENDDATE + "','" + NO_OF_TRUCK + "','" + REMARKS + "')";

            SqlCommand cmd = new SqlCommand(query, cn);
            cn.Open();
            int i = cmd.ExecuteNonQuery();
            cn.Close();

            if (i > 0)
            {
                ClearFields();
                Response.Write("<script>alert('Truck Request Submitted Successfully');</script>");
            }
            else
            {
                Response.Write("<script>alert('Data not inserted successfully');</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
        }
    }

    private void ClearFields()
    {
        txtid.Text = "";
        txtfcity.Text = "";
        txtcity.Text = "";
        txtsdate.Text = "";
        txtedate.Text = "";
        Textbox1.Text = "";
        Textbox2.Text = "";
    }
}
