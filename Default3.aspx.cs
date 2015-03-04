using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void validateCheckBoxes_ServerValidate(object sender, ServerValidateEventArgs e)
    {
        e.IsValid = RadioButton1.Checked || RadioButton2.Checked || RadioButton3.Checked || RadioButton4.Checked || RadioButton5.Checked || RadioButton6.Checked || RadioButton7.Checked ;
        if (e.IsValid)
        {
            // at least any one radio button is checked among all group
        }
        else
        {
            // no radio button is checked among all group
        }
    }
}