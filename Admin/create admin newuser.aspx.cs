using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using indedu.userproperties;
using indedu.usermethods;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using indusedu.country;

public partial class Admin_create_admin_newuser : System.Web.UI.Page
{
    userproperties userpop = new userproperties();
    usersmethods usermethod = new usersmethods();
    Country cntrs = new Country();
    bool res;
    string strScript = "";
    DataSet ds;
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["induseduconnectionstring"]);
       
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindcountry();
            binddesignationusers();
        }
    }
    protected void bindcountry()
    {
        ds = new DataSet();
        ds = cntrs.getcountry();
        ddlCountry.DataSource = ds;
        ddlCountry.DataTextField ="Country_Name";
        ddlCountry.DataValueField ="Country_ID";
        ddlCountry.DataBind();
        ddlCountry.Items.Insert(0, "Select Country");
    }
    protected void binddesignationusers()
    {
        ds = new DataSet();
        ds = cntrs.usertype();
        ddlUsertype.DataSource = ds;
        ddlUsertype.DataTextField ="Usertype";
        ddlUsertype.DataValueField ="id";
        ddlUsertype.DataBind();
        ddlUsertype.Items.Insert(0, "Select Designation");
    }
    protected void btnCreate_Click(object sender, EventArgs e)
    {
        userpop.Firstname = txtFName.Text;
        userpop.Lastname = txtLName.Text;
        userpop.Designation = ddlUsertype.SelectedItem.Text;
        userpop.Country = ddlCountry.SelectedItem.Text;
        userpop.State = ddlstate.SelectedItem.Text;
        userpop.City = ddlcity.SelectedItem.Text;
        userpop.Userid = txtUserid.Text;
        userpop.Password = txtPwd.Text;
        userpop.Emailid = txtEmail.Text;
        userpop.Phnono = txtContact.Text;
        userpop.Cfmpwd = txtcPwd.Text;
        userpop.Address = txtaddress.Text;
        userpop.Mobileno = txtmobile.Text;
        userpop.Postdate = System.DateTime.Now.ToString();
        userpop.Status = 1;
        res = usermethod.insertnewuser(userpop.Firstname, userpop.Lastname, userpop.Designation, userpop.Country, userpop.State, userpop.City,
            userpop.Userid, userpop.Password, userpop.Emailid, userpop.Phnono, userpop.Cfmpwd, userpop.Address, userpop.Mobileno,
            userpop.Postdate, userpop.Status);
        if (res == true)
        {
             strScript = "alert('Successfully Crreated User Details');";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alertBox", strScript, true);
              
        }
        else
        { }
    }
    protected void txtUserId_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        string cname=ddlCountry.SelectedItem.Text;
        string cid = cntrs.getcountryid(cname);
        ds = new DataSet();
        ds = cntrs.getstates(cid);
        ddlstate.DataSource = ds;
        ddlstate.DataTextField = "State_Name";
        ddlstate.DataValueField = "State_ID";
        ddlstate.DataBind();
        ddlCountry.Items.Insert(0, "Select State");
    }
    protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sname = ddlstate.SelectedItem.Text;
        string sid = cntrs.getstatesid(sname);
        ds = new DataSet();
        ds = cntrs.getcities(sid);
        ddlcity.DataSource = ds;
        ddlcity.DataTextField ="City_Name";
        ddlcity.DataValueField ="City_ID";
        ddlcity.DataBind();
        ddlCountry.Items.Insert(0, "Select City");
    }
    protected void txtEmail_TextChanged(object sender, EventArgs e)
    {

    }
}