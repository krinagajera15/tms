using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class usermaster : System.Web.UI.MasterPage
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        //if (!IsPostBack)
        //{
        if (Session["FullName"] != null && Session["U_ID"]!=NU)
        {
            lblWelcome.Text = "Welcome, " + Session["FullName"].ToString();
            lnkLogout.Visible = true;
            lnkLogin.Visible = false;
            LinkButton1.Visible = true;

            imgProfile.Visible = true;
            SqlCommand cmd = new SqlCommand("select profile_photo from USER_REG where U_ID=" + Session["U_ID"], cn);
            try
            {
                cn.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows && dr.Read())  // Ensure the reader has data and then read it
                {
                    // Assuming the profile photo path is stored in the first column of the result
                    string profile_photo = dr["profile_photo"].ToString();
                    if (profile_photo.StartsWith("~"))
                        imgProfile.ImageUrl = profile_photo; // Already has path
                    else
                        imgProfile.ImageUrl = "~/img/profile_photo/" + profile_photo;
                }
            }
             
            finally
            {
                cn.Close();
            }
        }
        else
        {
            lblWelcome.Text = "";
            lnkLogout.Visible = false;
            lnkLogin.Visible = true;
            LinkButton1.Visible = false;
            imgProfile.Visible = false;
        }
    }

    //if (dr.Read())
    //{
    //    imgProfile.ImageUrl = "~/img/profile_photo/" + dr[0].ToString();
    //}
    //cn.Close();
    //        else
    //        {
    //            lblWelcome.Text = "";
    //            lnkLogout.Visible = false;
    //            lnkLogin.Visible = true;
    //        LinkButton1.Visible = false;
    //        imgProfile.Visible = false;
    //    }

    

    protected void lnkLogout_Click1(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Response.Redirect("index.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
}
