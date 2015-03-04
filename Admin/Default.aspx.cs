  using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using indusedu.LoginDetails;
using indusedu.Admin;
using indusedu.country;
using indusedu.exceptionsmethod;

public partial class Admin_Default : System.Web.UI.Page
{

    LoginDetails log = new LoginDetails();
    AdminLogin ad = new AdminLogin();
    Country c = new Country();
    exceptions ex = new exceptions();
    
    public static string expage = "Default.aspx";
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["UserName"] = txtuserid.Text;
        BindCountry();
        usetype1();
        
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["induseduconnectionstring"].ToString());
        con.Open();
        try
        {
            
            log.Userid1 = txtuserid.Text;
            log.Password = txtpwd.Text;
            ds = new DataSet();
            ds = ad.Login(log.Userid1, log.Password);
            if (ds.Tables[0].Rows.Count > 0)
            {
                string date = System.DateTime.Now.ToString();
                string ip = ad.GetIPAddress();
                ds = ad.Ip(date, ip);
                Session["ip"] = ds.Tables[0].Rows[0]["ipaddress"].ToString();
                Session["LogTime"] = ds.Tables[0].Rows[0]["logdate"].ToString();
                ds = ad.InsertIp(date, ip,log.Userid1);
                Response.Redirect("indusedu_adminhome.aspx", false);

            }
            else
            {
                txtuserid.Text = "";
                lbl.Visible = true;
                lblmsg.Text = "Invalid Username and Password";
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
            }
        }
        catch (Exception ea)
        {
              ex.insert_exception(ea,expage);
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Error occured')</script>");
        }
       
        }
        public void BindCountry()
        {

            ds = c.getcountry();
            ddlcountry.DataSource = ds;
            ddlcountry.DataTextField = "Country_Name";
            ddlcountry.DataValueField = "Country_ID";
            ddlcountry.DataBind();
            ddlcountry.Items.Insert(0, new ListItem("--Select--", "0"));
        }
        public void usetype1()
        {
       
            ds = c.usertype();
            ddlusertype.DataSource = ds;
            ddlusertype.DataTextField = "Usertype";
            ddlusertype.DataValueField = "Usertype";
            ddlusertype.DataBind();
            ddlusertype.Items.Insert(0, new ListItem("--Select--", "0"));
            
        }
       
     

   
}