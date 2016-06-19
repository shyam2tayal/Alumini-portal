using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Admin_logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings[1].ConnectionString);
        conn.Open();
        SqlCommand updatestatus = new SqlCommand("Update login set status ='D' where username='" + Session["Name"].ToString() + "'", conn);
        updatestatus.ExecuteNonQuery();
        conn.Close();
        FormsAuthentication.SignOut();
        Session.Abandon();
        Session["Name"] = "";
        Session["Type"] = "";
        Session["ID"] = "";
        Response.Redirect("~/login.aspx");
       

    }
}
