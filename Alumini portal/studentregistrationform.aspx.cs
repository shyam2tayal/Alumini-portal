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
        if (!IsPostBack)
        {
            for (int i = 1990; i <= 2014; i++)
            {
                ddlyear.Items.Add(i.ToString());
            }
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        s.insert("insert into Aluminiregistration([Name],[EnrollmentNo],[Email],[Password],[PassingYear],[Branch],[CompanyPlaced],[JobProfile],Status) values('" + txtname.Text + "','" + txtenroll.Text + "','" + txtemail.Text + "','" + txtpwd.Text + "','" + ddlyear.Text + "','" + ddlbranch.Text + "','" + txtcompany.Text + "','" + txtjobprofile.Text + "','Pending')");
        string javaScript = "<script language=JavaScript>\n" + "alert('Request successfully Sent to admin!!! !!');\n" + "</script>";
        RegisterStartupScript("image1_ClickScript", javaScript);
    }
}