using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    save s = new save();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblalumininame.Text = Session["name"] as string;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        s.insert("insert into Request([AluminiName],[AluminiEmail],[Name],[Email],[Contact],Message) values('" + Session["name"] + "','" + Session["email"] + "','" + txtname.Text + "','" + txtemail.Text + "','" + txtcontact.Text + "','"+txtmsg.Text+"')");
        string javaScript = "<script language=JavaScript>\n" + "alert('Request Sucessfully Sent!!! !!');\n" + "</script>";
        RegisterStartupScript("image1_ClickScript", javaScript);
    }
}