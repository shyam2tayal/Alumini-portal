using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Teacher_Default : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings[1].ConnectionString);
    save s = new save();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("insert into addevent(Eventname,Eventdetail,Eventdate) values('"+txteventname.Text+"','"+txtdetail.Text+"','"+txtdate.Text+"')", conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        string javaScript = "<script language=JavaScript>\n" + "alert('Information saved successfully !!');\n" + "</script>";
        RegisterStartupScript("image1_ClickScript", javaScript);                                                         
    }
    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        GridViewRow row = btn.NamingContainer as GridViewRow;
        txteventname.Text = row.Cells[1].Text;
        txtdetail.Text = row.Cells[2].Text;
        txtdate.Text = row.Cells[3].Text;
        Label1.Text = row.Cells[0].Text;
        Button3.Visible = true;
        GridView1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        s.insert("update addevent set Eventname='" + txteventname.Text + "' , Eventdetail='" + txtdetail.Text + "',eventdate='" + txtdate.Text + "' where Eventid='" + Label1.Text + "'");
        string javaScript = "<script language=JavaScript>\n" + "alert('Event sucessfully updated!!! !!');\n" + "</script>";
        RegisterStartupScript("image1_ClickScript", javaScript);
        GridView1.DataBind();

    }
    protected void Delete_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        GridViewRow row = btn.NamingContainer as GridViewRow;
        Label1.Text = row.Cells[0].Text;
        s.insert("delete from addevent where Eventid='" + Label1.Text + "'");
        GridView1.DataBind();
    }
}