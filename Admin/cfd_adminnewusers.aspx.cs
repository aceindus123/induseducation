using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using cfd.adminusersproperties;
using cfd.adminusersmethod;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;

public partial class Admin_cfd_adminnewusers : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["WEConnectionString"]);
    string loginid = "";
    int statusid, testid;
    string strscpt;
    adminusersproperties admusers = new adminusersproperties();
    adminusersmethods admusermethods = new adminusersmethods();
    string strScript = "";
    int id;
    int status;
    string Email = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Convert.ToString(Session["Loginid"]) != "")
        //{
        //    //loginid = Convert.ToString(Session["Loginid"]);
        //    loginid = "adminclassifieds@aceindus.in";
        //    //getuname(loginid);
        //}
        //else
        //{
        //    Response.Redirect("Default.aspx");
        //}

        string param = Convert.ToString(Request.QueryString["parameter"]);

        if (param == "create new user")
        {
            userdetails.Visible = false;
            createuser.Visible = true;
            bindcountry();
        }

        else
        {
            createuser.Visible = false;
            bindusers();
        }
        if (!IsPostBack)
        {
            trIAppointments.Visible = false;
            trIUpCtfModule.Visible = false;
            if (postadyes.Checked == true)
            {
                trIAppointments.Visible = true;

            }
            else if (postadno.Checked == true)
            {
                trIAppointments.Visible = false;

            }

            if (regyes.Checked == true)
            {
                trIUpCtfModule.Visible = true;

            }
            else if (regno.Checked == true)
            {
                trIUpCtfModule.Visible = false;
            }
        }
    }
    protected void bindcountry()
    {
        DataSet dscountry = new DataSet();
        con.Open();
        SqlCommand cmd = new SqlCommand("sp_country", con);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter sqlda = new SqlDataAdapter(cmd);
        sqlda.Fill(dscountry);
        con.Close();
        if (dscountry.Tables[0].Rows.Count > 0)
        {
            for (int i = 1; i <= dscountry.Tables[0].Rows.Count; i++)
            {
                ddlCountry.Items.Add("");
                ddlCountry.Items[i].Text = dscountry.Tables[0].Rows[i - 1]["countryname"].ToString();
                ddlCountry.Items[i].Value = dscountry.Tables[0].Rows[i - 1]["countryid"].ToString();
            }
        }
      
    }

    protected void bindusers()
    {

        DataSet ds1 = new DataSet();
        string statement = "select *,Case when Status=1 Then 'Active' when Status=0 Then 'Inactive' End status from cfd_adminusers order by posteddate desc ";
        con.Open();
        SqlDataAdapter imgtext = new SqlDataAdapter(statement, con);
        imgtext.Fill(ds1, "categoryData");
        DataView dtView = ds1.Tables[0].DefaultView;

        if (ds1.Tables[0].Rows.Count == 0)
        {
            ds1.Tables[0].Rows.Add(ds1.Tables[0].NewRow());
            ViewGridWbAdmin.DataSource = ds1;
            ViewGridWbAdmin.DataBind();
            int columncount = Convert.ToInt32(ViewGridWbAdmin.Rows[0].Cells.Count);
            ViewGridWbAdmin.Rows[0].Cells.Clear();
            ViewGridWbAdmin.Rows[0].Cells.Add(new TableCell());
            ViewGridWbAdmin.Rows[0].Cells[0].ColumnSpan = columncount;
            ViewGridWbAdmin.Rows[0].Cells[0].Text = "No Records Found";
            ViewGridWbAdmin.Rows[0].Cells[0].CssClass = "grid_width";

        }
        else
        {
            ViewGridWbAdmin.DataSource = ds1;
            ViewGridWbAdmin.DataBind();

        }


        con.Close();
    }
    protected void btnCreate_Click(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["Username"]) != null)
        {
            if (lblStatus.Text == "User Id Available")
            {
                string FName = Convert.ToString(txtFName.Text);
                string LName = Convert.ToString(txtLName.Text);
                string emailname = Convert.ToString(txtEmail.Text);
                string email = emailname;
                string pwd = Convert.ToString(txtPwd.Text);
                admusers.Fname = FName;
                admusers.Lname = LName;
                admusers.Emailid = email;
                admusers.Confirmpwd = pwd;
                admusers.Userid = txtUserid.Text;
                admusers.Designation = ddlUsertype.SelectedItem.Text;
                admusers.Country = ddlCountry.SelectedItem.Text;
                admusers.State = ddlstate.SelectedItem.Text;
                admusers.City = ddlcity.SelectedItem.Text;
                admusers.Phno = txtContact.Text;
                admusers.Mobileno = txtmobile.Text;
                admusers.Address = txtaddress.Text;

                
                //posted ads
                if (postadyes.Checked == true)
                {
                    if (chkbxApPost.Checked == true)
                    {
                        admusers.Psdad_post = 1;
                    }
                    else
                    {
                        admusers.Psdad_post = 0;
                    }
                    if (chkbxapview.Checked == true)
                    {
                       admusers.Psdad_view = 1;
                    }
                    else
                    {
                        admusers.Psdad_view = 0;
                    }
                    if (chkbxApEdit.Checked == true)
                    {
                        admusers.Psdad_edit = 1;
                    }
                    else
                    {
                        admusers.Psdad_edit = 0;
                    }
                    if (chkbxApDel.Checked == true)
                    {
                        admusers.Psdad_delete = 1;
                    }
                    else
                    {
                        admusers.Psdad_delete = 0;
                    }

                    if (chkbxapact.Checked == true)
                    {
                        admusers.Psdad_active = 1;
                    }
                    else
                    {
                        admusers.Psdad_active = 0;
                    }

                    if (chkbxapdeact.Checked == true)
                    {
                        admusers.Psdad_deactive = 1;
                    }
                    else
                    {
                        admusers.Psdad_deactive = 0;
                    }
                }
                else
                {
                    admusers.Psdad_post = 0;
                    admusers.Psdad_view = 0;
                    admusers.Psdad_edit = 0;
                    admusers.Psdad_delete = 0;
                    admusers.Psdad_active = 0;
                    admusers.Psdad_deactive = 0;
                }
                //Registered users
                if (regyes.Checked == true)
                {

                    if (chkbxUpregview.Checked == true)
                    {
                        admusers.Regusers_view = 1;
                    }
                    else
                    {
                        admusers.Regusers_view = 0;
                    }
                    if (chkbxUpCtfPost.Checked == true)
                    {
                        admusers.Regusers_post = 1;
                    }
                    else
                    {
                        admusers.Regusers_post = 0;
                    }
                    if (chkbxUpCtfDel.Checked == true)
                    {
                        admusers.Regusers_delete = 1;
                    }
                    else
                    {
                        admusers.Regusers_delete = 0;
                    }
                    if (chkbxUpCtfEdit.Checked == true)
                    {
                        admusers.Regusers_edit = 1;
                    }
                    else
                    {
                        admusers.Regusers_edit = 0;
                    }


                }
                else
                {
                    admusers.Regusers_view = 0;
                    admusers.Regusers_edit = 0;
                    admusers.Regusers_delete = 0;
                }


                admusers.Status = 1;
                admusers.Createdate =System.DateTime.Now.ToString();
                con.Open();
                bool t = admusermethods.adminuserinsert(admusers.Fname, admusers.Lname, admusers.Emailid, admusers.Confirmpwd, admusers.Designation, admusers.Country,
                    admusers.State, admusers.City, admusers.Phno, admusers.Mobileno, admusers.Psdad_post, admusers.Psdad_view, admusers.Psdad_edit, admusers.Psdad_delete,
                    admusers.Psdad_active, admusers.Psdad_deactive, admusers.Regusers_view, admusers.Regusers_post, admusers.Regusers_edit, admusers.Regusers_delete,
                    admusers.Userid, admusers.Address, admusers.Status, admusers.Createdate);
             
                con.Close();
                if (t == true)
                {
                    //SendMail(obj.cUserId, obj.cPassword, obj.cFName, obj.cLName, obj.cDesig, obj.cEmailId, obj.cCountry);
                    strScript = "alert('User Id is successfully Created');location.replace('cfd_adminnewusers.aspx')";
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "alertbox", strScript, true);
                }
            }
            else
            {
                 strScript = "alert('Sorry you Cant create new user id with this email id.Please make sure that email id available or not');";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "alertbox", strScript, true);
            }
        }
    }

    protected void txtEmail_TextChanged(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        //string qry = "select email from Admin_WebAdminCreation where email='" + txtEmail.Text + lblemailExtension.Text + "'";
        string qry = "select emailid from cfd_adminusers where emailid='" + txtUserid.Text + "'";
        SqlDataAdapter ada = new SqlDataAdapter(qry, con);
        ada.Fill(ds);
        if (!ds.Tables[0].Rows.Count.Equals(0))
        {
            lblEmailstatus.Text = "Email Id Already Exist";
            lblEmailstatus.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            lblEmailstatus.Text = "Email Id Available";
            lblEmailstatus.ForeColor = System.Drawing.Color.Green;
        }
    }

    protected void txtUserId_TextChanged(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        //string qry = "select email from Admin_WebAdminCreation where email='" + txtEmail.Text + lblemailExtension.Text + "'";
        string qry = "select UserId from cfd_adminusers where emailid='" + txtUserid.Text + "'";
        SqlDataAdapter ada = new SqlDataAdapter(qry, con);
        ada.Fill(ds);
        if (!ds.Tables[0].Rows.Count.Equals(0))
        {
            lblStatus.Text = "User Id Already Exist";
            lblStatus.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            lblStatus.Text = "User Id Available";
            lblStatus.ForeColor = System.Drawing.Color.Green;
        }
    }

    protected void chkApAll_CheckedChanged(object sender, EventArgs e)
    {
        if (chkApAll.Checked == true)
        {

            chkbxapview.Checked = true;
            chkbxApPost.Checked = true;
            chkbxApEdit.Checked = true;
            chkbxApDel.Checked = true;
            chkbxapact.Checked = true;
            chkbxapdeact.Checked = true;
        }
        else
        {

            chkbxapview.Checked = false;
            chkbxApPost.Checked = false;
            chkbxApEdit.Checked = false;
            chkbxApDel.Checked = false;
            chkbxapact.Checked = false;
            chkbxapdeact.Checked = false;
        }
    }
    protected void chkUpCtfAll_CheckedChanged(object sender, EventArgs e)
    {
        if (chkUpCtfAll.Checked == true)
        {

            chkbxUpregview.Checked = true;
            chkbxUpCtfPost.Checked = true;
            chkbxUpCtfEdit.Checked = true;
            chkbxUpCtfDel.Checked = true;
        }
        else
        {

            chkbxUpregview.Checked = false;
            chkbxUpCtfPost.Checked = false;
            chkbxUpCtfEdit.Checked = false;
            chkbxUpCtfDel.Checked = false;
        }
    }


    protected void btnCreateUser_Click(object sender, EventArgs e)
    {
        string param = "create new user";
        createuser.Visible = true;
        userdetails.Visible = false;
        Response.Redirect("cfd_adminnewusers.aspx?parameter="+param);
    }
    protected void ViewGridWbAdmin_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
       // ItemsGet();
       // ViewGridWbAdmin.PageIndex = e.NewPageIndex;
        //ViewGridWbAdmin.DataBind();
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
        btnCreate.Visible = false;
     
        lblcreateuser.Visible = false;
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
      
        Response.Redirect("cfd_adminuseredit.aspx?parameter="+id);
     
     
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
        ds = admusermethods.getPerticularWebAdminDetails(id);
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
        bool  t = admusermethods.WebAdmin_ChangeStatus(id1, status1);
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
        ds = admusermethods.getPerticularWebAdminDetails(id);
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
          bool  t = admusermethods.WebAdmin_ChangeStatus(id1, status1);
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

    protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        ddlstate.Items.Clear();

        string id = ddlCountry.SelectedItem.Value.ToString();
        DataSet dsstate = new DataSet();

        con.Open();

        //SqlDataAdapter sqlda = new SqlDataAdapter("select * from state where countryid = " + id + " order by statename Asc", connection);
        SqlCommand cmd = new SqlCommand("Sp_Admin_State", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@countryid", id);
        SqlDataAdapter sqlda = new SqlDataAdapter(cmd);
        sqlda.Fill(dsstate);
        con.Close();

        ddlstate.Items.Insert(0, "Select State");
        if (dsstate.Tables[0].Rows.Count > 0)
        {
            for (int i = 1; i <= dsstate.Tables[0].Rows.Count; i++)
            {

                ddlstate.Items.Add("");
                ddlstate.Items[i].Text = dsstate.Tables[0].Rows[i - 1]["statename"].ToString();
                ddlstate.Items[i].Value = dsstate.Tables[0].Rows[i - 1]["stateid"].ToString();
            }
        }
    }
    protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlcity.Items.Clear();
        DataSet dscity = new DataSet();
        string id1 = ddlstate.SelectedItem.Value.ToString();

        con.Open();
        //SqlDataAdapter sqlda1 = new SqlDataAdapter("select * from city where stateid = " + id1 + " order by cityname Asc", connection);
        SqlCommand cmd = new SqlCommand("Sp_Admin_City", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@stateid", id1);
        SqlDataAdapter sqlda1 = new SqlDataAdapter(cmd);
        sqlda1.Fill(dscity);
        con.Close();
        ddlcity.Items.Insert(0, "Select City");
        if (dscity.Tables[0].Rows.Count > 0)
        {
            for (int i = 1; i <= dscity.Tables[0].Rows.Count; i++)
            {
                ddlcity.Items.Add("");
                ddlcity.Items[i].Text = dscity.Tables[0].Rows[i - 1]["cityname"].ToString();
                ddlcity.Items[i].Value = dscity.Tables[0].Rows[i - 1]["cityid"].ToString();
            }
        }
    }


}