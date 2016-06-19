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

public partial class Teacher_Update : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["gpmce"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Type"] == null)
            Response.Redirect("~/login.aspx");

        else
        {
            Labe120.Text = Session["Name"].ToString();
            Enrollment.Text = Session["Enrollment"] as string;

            if (!IsPostBack)
            {

                
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from Teacher_record where [Enrollment]='" + Enrollment.Text + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Enrollment.Text = dr[0].ToString();
                    Name.Text = dr[1].ToString();
                    FatherName.Text = dr[2].ToString();
                    DoB.Text = dr[3].ToString();
                    Sex.Text = dr[4].ToString();
                    Phone.Text = dr[5].ToString();
                    Address.Text = dr[6].ToString();
                    PinCode.Text = dr[7].ToString();
                    Email.Text = dr[8].ToString();
                    Subject.Text = dr[9].ToString();
                    UserName.Text = dr[10].ToString();
                }
                con.Close();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        con.Open();
        SqlCommand cmd = new SqlCommand("update Teacher_Record set name='" + Name.Text + "',fathername='" + FatherName.Text + "',DoB='" + DoB.Text + "',subject='" + Subject.Text + "',sex='" + Sex.Text + "',phone='" + Phone.Text + "',address='" + Address.Text + "',pinCode='" + PinCode.Text + "',Email='" + Email.Text + "',[UserName]='"+UserName.Text+"' where [Enrollment]='" + Enrollment.Text + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Updated successfully...')</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Password.Text != "")
        {
            
            con.Open();
            SqlCommand cmd = new SqlCommand("Select password from teacher_record where password='" + Oldpass.Text + "' and [Enrollment]='" + Enrollment.Text + "'", con);
            if (cmd.ExecuteScalar() != null)
            {
                SqlCommand updatepass = new SqlCommand("Update teacher_record set password='" + Password.Text + "' where [Enrollment]='" + Enrollment.Text + "'", con);
               
                updatepass.ExecuteNonQuery();
                Response.Write("<script>alert('Password updated successfully...')</script>");
               
            }
            else
                Response.Write("<script>alert('You have entered Wrong Password...')</script>");

            con.Close();
        }
        else
            Response.Write("<script>alert('Please Enter New Password...')</script>");
    } 
}
