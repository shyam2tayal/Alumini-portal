using System;
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
using System.IO;

public partial class _Default : System.Web.UI.Page
{
    public SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["gpmce"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    String Utype, Uname, pwd, User_id;
    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (UType.Text == "ADMIN")
        {
            if (UName.Text == "admin" && Pwd.Text == "admin")
            {
                Session["Type"] = "admin";
                Session["Name"]="admin";
                Response.Redirect("Admin/Admin_Home.aspx");
            }
            else
            {
                Response.Write("<script>alert('You have either entered Wrong User Name and Password..')</script>");
            }
        }
        else if (UType.Text == "TEACHER")
        {
            SqlCommand admin_validate = new SqlCommand("Select [Email],password,[Enrollment] from Teacher_Record where [Email]='" + UName.Text + "' and password='" + Pwd.Text + "'", conn);
            conn.Open();
            SqlDataReader dr = admin_validate.ExecuteReader();
            if (dr.Read())
            {
                Session["Type"] = UType.Text;
                Session["Name"] = UName.Text;
                Session["ID"] = User_id;
                Session["Enrollment"] = dr[2].ToString();
                Response.Redirect("~/Teacher/addevent.aspx");
            }

            else
            {
                Response.Write("<script>alert('You have either entered Wrong User Name or Password..')</script>");
            }

            conn.Close();
        }
        else if (UType.Text == "STUDENT")
        {
            SqlCommand admin_validate = new SqlCommand("Select [Email],password,enrollment from [Student_Record] where [Email]='" + UName.Text + "' and password='" + Pwd.Text + "'", conn);
            conn.Open();
            SqlDataReader dr = admin_validate.ExecuteReader();
            if (dr.Read())
            {

                Session["Type"] = UType.Text;
                Session["Name"] = UName.Text;
                Session["ID"] = User_id; Session["enrollment"] = dr[2].ToString();
                Response.Redirect("~/Student/Update.aspx");
            }

            else
            {
                Response.Write("<script>alert('You have either entered Wrong User Name and Password..')</script>");
            }

            conn.Close();
            
        }
        else if (UType.Text == "ALUMINI")
        {
            SqlCommand admin_validate = new SqlCommand("Select [Email],password,id from [Aluminiregistration] where [Email]='" + UName.Text + "' and password='" + Pwd.Text + "' and status='Approved'", conn);
            conn.Open();
            SqlDataReader dr = admin_validate.ExecuteReader();
            if (dr.Read())
            {

                Session["Type"] = UType.Text;
                Session["Name"] = UName.Text;
                Session["ID"] = dr[2].ToString();
                Response.Redirect("~/Alumini/Update.aspx");
            }

            else
            {


                Response.Write("<script>alert('You have either entered Wrong User Name and Password..')</script>");
            }

            conn.Close();

        }

    }

    
}
   