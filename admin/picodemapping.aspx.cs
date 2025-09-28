using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class admin_picodemapping : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        if (!IsPostBack)
        {
            txtdate.Text = DateTime.Now.ToString("dd-mm-yyyy hh:mm:tt");
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {

        try
        {
            string V_ID = txtVendorId.Text.Trim();
            string TR_ID = txttrid.Text.Trim();
            string Country = ddlCountry.SelectedValue;
            string State = ddlState.SelectedValue;
            string City = ddlCity.SelectedValue;
            string Pincode = ddlPincode.SelectedValue;
            string Status = ddlStatus.SelectedValue;
            string updatetime = txtdate.Text.Trim();

            string qry = "INSERT INTO PINCODE_MAPPING (V_ID,TR_ID,CountryID,StateID,CityID,PincodeID,STATUS,UPDATETIME) VALUES ('" + V_ID + "','" + TR_ID + "','" + Country + "','" + State + "','" + City + "','" + Pincode + "','" + Status + "','" + updatetime + "')";
            Response.Write("INSERT INTO PINCODE_MAPPING (V_ID,TR_ID,CountryID,StateID,CityID,PincodeID,STATUS,UPDATETIME) VALUES ('" + V_ID + "','" + TR_ID + "','" + Country + "','" + State + "','" + City + "','" + Pincode + "','" + Status + "','" + updatetime + "')");
            SqlCommand cmd = new SqlCommand(qry, cn);

            cn.Open();
            int i = cmd.ExecuteNonQuery();

            cn.Close();
            if (i > 0)
            {
                ClearFields();

                Response.Write("<script>aletr('SUCCESS')</script>");


            }
            else
            {
                Response.Write("<script>aletr('something wrong')</script>");
            }
        }
        catch (Exception ex)
        {

            Response.Write("<script>alert('Error:" + ex.Message + "');</script>");
        }
    }

    private void ClearFields()
    {
        txtVendorId.Text = "";
        txttrid.Text = "";
        ddlCountry.SelectedValue = "";
        ddlState.SelectedValue = "";
        ddlCity.SelectedValue = "";
        ddlStatus.SelectedValue = "";
        txtdate.Text = "";

    }
}