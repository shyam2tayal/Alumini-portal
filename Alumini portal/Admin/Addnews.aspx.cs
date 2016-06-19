using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["gpmce"].ConnectionString);
    save s = new save();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        s.insert("insert into news(Newsheading,News) values('" + txtheading.Text + "','" + txtnews.Text + "')");
        string javaScript = "<script language=JavaScript>\n" + "alert('News sucessfully Added!!! !!');\n" + "</script>";
        RegisterStartupScript("image1_ClickScript", javaScript);
        GridView1.DataBind();
    }
    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        Button btn=sender as Button;
        GridViewRow row = btn.NamingContainer as GridViewRow;
        txtheading.Text = row.Cells[1].Text;
        txtnews.Text = row.Cells[2].Text;
        Label1.Text = row.Cells[0].Text;
        Button2.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       s.insert("update news set Newsheading='" + txtheading.Text + "' , news='" + txtnews.Text + "' where newsid='"+Label1.Text+"'");
       string javaScript = "<script language=JavaScript>\n" + "alert('News sucessfully Updated!!! !!');\n" + "</script>";
        RegisterStartupScript("image1_ClickScript", javaScript);
        GridView1.DataBind();
      
    }
    protected void Delete_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        GridViewRow row = btn.NamingContainer as GridViewRow;
        Label1.Text = row.Cells[0].Text;
        s.insert("delete from news where newsid='" + Label1.Text + "'");
        string javaScript = "<script language=JavaScript>\n" + "alert('News sucessfully Deleted!!! !!');\n" + "</script>";
        RegisterStartupScript("image1_ClickScript", javaScript);        
        GridView1.DataBind();
    }
    protected void txtheading_TextChanged(object sender, EventArgs e)
    {

    }
}