using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Default : System.Web.UI.Page
{
    save s = new save();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lbleventid.Text = Session["eventid"] as string;
            lbleventname.Text = Session["ename"] as string;
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        s.insert("insert into Participantdetail([Eventid],[EventName],[Name],[Contact],[Email],[Role]) values('" + lbleventid.Text + "','" + lbleventname.Text + "','" + txtname.Text + "','" + txtcontact.Text + "','" + txtemail.Text + "','" + txtrole.Text + "')");
        string javaScript = "<script language=JavaScript>\n" + "alert('Sucessfully Applied!!! !!');\n" + "</script>";
        RegisterStartupScript("image1_ClickScript", javaScript);
    }
}