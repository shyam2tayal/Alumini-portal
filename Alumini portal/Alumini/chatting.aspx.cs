using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["empusername"] == null)
        {
            Response.Redirect("index.aspx");
        }
        else
        {
            Label2.Text = Session["empusername"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {


    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "cp")
        {
            string l = e.CommandArgument as string;
            Label1.Text = l;
           }
    }
    protected void send(object sender, EventArgs e)
    {
        save s = new save();
        s.insert("insert into chat(chatfrom,chatto,message) values('" + Label1.Text + "','" + Session["empusername"] + "','" + tbmsg.Text + "')");
        tbmsg.Text = "";
       
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        DataList2.DataBind();
    }
    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            LinkButton id = (LinkButton)e.Item.FindControl("nameLabel");
            if(Label2.Text == id.Text)
            {
                id.Visible = false;
            }            

        }
    }

    protected void t1_Tick(object sender, EventArgs e)
    {
        Response.Write("update");
        DataList1.DataBind();
        
    }
}