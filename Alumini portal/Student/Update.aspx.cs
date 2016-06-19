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

public partial class Student_Update : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["gpmce"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Type"] == null)
            Response.Redirect("~/login.aspx");

        else
        {
            Label20.Text = Session["Name"].ToString();
            Enrollment.Text = Session["enrollment"] as string;
            if (!IsPostBack)
            {
                
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from Student_record where Enrollment='" + Session["enrollment"].ToString() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Enrollment.Text = dr[0].ToString();
                    Class.Text = dr[1].ToString();
                    Name.Text = dr[2].ToString();
                    FatherName.Text = dr[3].ToString();
                    DoB.Text = dr[4].ToString();
                    Sex.Text = dr[5].ToString();
                    Phone.Text = dr[6].ToString();
                    Address.Text = dr[7].ToString();
                    PinCode.Text = dr[8].ToString();
                    Email.Text = dr[9].ToString();
                    UserName.Text = dr[10].ToString();
                }
                con.Close();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        con.Open();
        SqlCommand cmd = new SqlCommand("update Student_Record set name='" + Name.Text + "',fathername='" + FatherName.Text + "',DoB='" + DoB.Text + "',sex='" + Sex.Text + "',phone='" + Phone.Text + "',address='" + Address.Text + "',pinCode='" + PinCode.Text + "',Email='" + Email.Text + "',[UserName]='"+UserName.Text+"',class='"+Class.Text+"' where [Enrollment]='" + Enrollment.Text + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('successfully updated...')</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
         if (Password.Text != "")
        {
            
            con.Open();
            SqlCommand cmd = new SqlCommand("Select password from Student_Record where password='" + Oldpass.Text + "' and [Enrollment]='" + Session["enrollment"].ToString() + "'", con);
            if (cmd.ExecuteScalar() != null)
            {
                SqlCommand updatepass = new SqlCommand("Update Student_Record set password='" + Password.Text + "' where [Enrollment]='" + Session["enrollment"].ToString() + "'", con);
               // SqlCommand updateLoginpass = new SqlCommand("Update login set password='" + Password.Text + "' where [Enrollment]='" + Session["Name"].ToString() + "'", con);
                updatepass.ExecuteNonQuery();
                    string javaScript = "<script language=JavaScript>\n" + "alert('Password Succesfully updated!!! !!');\n" + "</script>";
                RegisterStartupScript("image1_ClickScript", javaScript);
               // updateLoginpass.ExecuteNonQuery();
            }
            else
                Response.Write("<script>alert('You have enter Wrong Password...')</script>");

            con.Close();
        }
        else
            Response.Write("<script>alert('Please Enter New Password...')</script>");
    } 
}
