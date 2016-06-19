using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        GridViewRow row = btn.NamingContainer as GridViewRow;
        int id =Convert.ToInt32( row.Cells[0].Text);
        string Eventname = row.Cells[1].Text;
        Session["eventid"] =Convert.ToString( id);
        Session["ename"] = Convert.ToString(Eventname);
        Response.Redirect("participantdetail.aspx");
        //txtheading.Text = row.Cells[1].Text;
        //txtnews.Text = row.Cells[2].Text;
        //Label1.Text = row.Cells[0].Text;
        //Button2.Visible = true;
    }
}