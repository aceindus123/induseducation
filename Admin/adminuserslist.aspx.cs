using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using indedu.userproperties;
using indedu.usermethods;

public partial class Admin_adminuserslist : System.Web.UI.Page
{
    int id;
    string strScript;
    int status;
    string Email = "";
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["induseduconnectionstring"]);
    usersmethods admusermethods = new usersmethods();
    DataSet ds;
    bool t;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindgridview();
        }
    }

    protected void bindgridview()
    {
        ds = new DataSet();
        ds = admusermethods.binduserslist();
        ViewGridWbAdmin.DataSource = ds;
        ViewGridWbAdmin.DataBind();

    }
    protected void ViewGridWbAdmin_ItemDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            LinkButton lnkStatusChange = (LinkButton)e.Row.FindControl("lnkBtnStatusChange");
            Label lblStatus = (Label)e.Row.FindControl("lblStatus");
            if (lblStatus != null)
            {
                if (lblStatus.Text == "1")
                {
                    lblStatus.Text = "Disabled";
                }
                else if (lblStatus.Text == "0")
                {
                    lblStatus.Text = "Enabled";
                }
            }
            var lblcreatedon = e.Row.FindControl("lblCreatedate") as Label;
            string createdate = lblcreatedon.Text;
            if (createdate == null || createdate == "NULL" || createdate == "")
            {

            }
            else
            {
                lblcreatedon.Text = DateTime.Parse(createdate).ToString("dd MMM yyyy");
            }

        }
    }

    protected void ViewDetails_Click(object sender, EventArgs e)
    {
        string view = "update";
        foreach (GridViewRow row in ViewGridWbAdmin.Rows)
        {
            CheckBox cb = (CheckBox)row.FindControl("CheckBoxreq");

            if (cb.Checked == true)
            {
                if (cb != null && cb.Checked)
                {
                    //get Current EMAIL_ID from the DataKey
                    id = Convert.ToInt32(ViewGridWbAdmin.DataKeys[row.RowIndex].Value);
                }
            }
        }

        Response.Redirect("cfd_adminuseredit.aspx?parameter=" + id);
    }
    protected void Activate_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();

        foreach (GridViewRow row in ViewGridWbAdmin.Rows)
        {
            CheckBox cb = (CheckBox)row.FindControl("CheckBoxreq");

            if (cb.Checked == true)
            {
                if (cb != null && cb.Checked)
                {
                    //get Current EMAIL_ID from the DataKey
                    id = Convert.ToInt32(ViewGridWbAdmin.DataKeys[row.RowIndex].Value);
                }
            }
        }
        con.Open();
       // ds = admusermethods.getPerticularWebAdminDetails(id);
        if (!ds.Tables[0].Rows.Count.Equals(0))
        {
            status = Convert.ToInt32(ds.Tables[0].Rows[0]["status"].ToString());
            Email = Convert.ToString(ds.Tables[0].Rows[0]["emailid"].ToString());

        }
        // string param = "create new user";

        if (status == 1)
        {
            strScript = "alert('" + Email + " is already enabled.')";
            //location.replace('cfd_adminnewusers.aspx?parameter="+param')";

            Response.Redirect("cfd_adminnewusers.aspx");
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alertBox", strScript, true);

        }
        else if (status == 0)
        {
            int id1 = id;
            int status1 = 1;
           // bool t = admusermethods.WebAdmin_ChangeStatus(id1, status1);
         
            // SendMail(UFName, ULName, Email, AId, Convert.ToString(reg.pStatus), id);
            if (t == true)
            {
                strScript = "alert('" + Email + " is successfully enabled.');location.replace('cfd_adminnewusers.aspx');";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alertBox", strScript, true);
            }
        }
        con.Close();
    }
    protected void Deactivate_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        foreach (GridViewRow row in ViewGridWbAdmin.Rows)
        {
            CheckBox cb = (CheckBox)row.FindControl("CheckBoxreq");

            if (cb.Checked == true)
            {
                if (cb != null && cb.Checked)
                {
                    //get Current EMAIL_ID from the DataKey
                    id = Convert.ToInt32(ViewGridWbAdmin.DataKeys[row.RowIndex].Value);
                }
            }
        }
        con.Open();
       // ds = admusermethods.getPerticularWebAdminDetails(id);
        if (!ds.Tables[0].Rows.Count.Equals(0))
        {
            status = Convert.ToInt32(ds.Tables[0].Rows[0]["status"].ToString());
            Email = Convert.ToString(ds.Tables[0].Rows[0]["emailid"].ToString());
            //UFName = Convert.ToString(ds.Tables[0].Rows[0]["name"].ToString());
            //ULName = Convert.ToString(ds.Tables[0].Rows[0]["LastName"].ToString());
            //AId = Convert.ToString(ds.Tables[0].Rows[0]["iActiveId"].ToString());

        }
        if (status == 1)
        {
            int id1 = id;
            int status1 = 0;
          //  bool t = admusermethods.WebAdmin_ChangeStatus(id1, status1);
            //SendMail(UFName, ULName, Email, AId, Convert.ToString(reg.pStatus), id);
            strScript = "alert('" + Email + " is successfully disabled.');location.replace('cfd_adminnewusers.aspx');";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alertBox", strScript, true);

        }
        else if (status == 0)
        {
            //obj.aId = id;
            //obj.aStatus = 1;
            //t = obj.WebAdmin_ChangeStatus(obj.aId, obj.aStatus);
            //SendMail(UFName, ULName, Email, AId, Convert.ToString(reg.pStatus), id);
            strScript = "alert('" + Email + " is already disabled.');location.replace('cfd_adminnewusers.aspx');";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alertBox", strScript, true);
        }
        con.Close();
    }
    protected void lnkDelete_Click(object sender, EventArgs e)
    {

        foreach (GridViewRow row in ViewGridWbAdmin.Rows)
        {
            CheckBox cb = (CheckBox)row.FindControl("CheckBoxreq");

            if (cb.Checked == true)
            {
                if (cb != null && cb.Checked)
                {
                    //get Current EMAIL_ID from the DataKey
                    id = Convert.ToInt32(ViewGridWbAdmin.DataKeys[row.RowIndex].Value);
                }
            }
        }
        string qry = "delete from cfd_adminusers where id=" + id;
        SqlCommand cmd = new SqlCommand(qry, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        strScript = "alert('Deleted successfully');location.replace('cfd_adminnewusers.aspx');";
        Page.ClientScript.RegisterStartupScript(this.GetType(), "alertbox", strScript, true);
    }

    protected void btnCreateUser_Click(object sender, EventArgs e)
    {
        Response.Redirect("create admin newuser.aspx");
    }
    protected void ViewGridWbAdmin_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        // ItemsGet();
        // ViewGridWbAdmin.PageIndex = e.NewPageIndex;
        //ViewGridWbAdmin.DataBind();
    }
   
}