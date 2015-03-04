using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_indusedu_adminhome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lnkadminclick(object sender, EventArgs e)
    {
        Response.Redirect("adminhome.aspx");
    }


    protected void lnkadminusers_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminuserslist.aspx");
    }
    protected void lnksupport_Click(object sender, EventArgs e)
    {

    }
    protected void lnkloginusers_Click(object sender, EventArgs e)
    {

    }
}