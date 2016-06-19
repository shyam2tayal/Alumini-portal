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

public partial class New_Student : System.Web.UI.Page
{
   static int GetEnroll;
   save s = new save();
   SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["gpmce"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
   {
     
       if (Session["Type"] == null)
           Response.Redirect("~/login.aspx");
       else
       {
           label16.Text = Session["Name"].ToString();
           if (!IsPostBack)
           {
               GetEnrollment();
               
           
              
           }
       }
    }


    private void GetEnrollment()
    {
        
        conn.Open();
        SqlCommand getEnrollement = new SqlCommand("Select StudentId from Id", conn);
        GetEnroll = Convert.ToInt32(getEnrollement.ExecuteScalar().ToString());
        Enrollment.Text = "STU90733" + GetEnroll.ToString();
        GetEnroll = GetEnroll + 1;
        conn.Close();
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.PostedFile.ContentLength > 0)
        {
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/images/" + FileUpload1.PostedFile.FileName));
            conn.Open();
            SqlCommand Validate_userName = new SqlCommand("Select username from Student_Record where UserName ='" + UserName.Text + "'", conn);
            if (Validate_userName.ExecuteScalar() == null)
            {
                SqlCommand insert_StudentRecord = new SqlCommand("insert into Student_Record values('" + Enrollment.Text + "','" + txtclass.Text + "','" + Name.Text + "','" + FatherName.Text + "','" + DoB.Text + "','" + Sex.Text + "','" + Phone.Text + "','" + Address.Text + "','" + PinCode.Text + "','" + Email.Text + "','" + UserName.Text + "','" + Password.Text + "','" + DateTime.Now.ToLongDateString() + "," + DateTime.Now.ToLongTimeString() + "','" + FileUpload1.PostedFile.FileName + "')", conn);
                SqlCommand update_Enrollment = new SqlCommand("update Id set StudentId ='" + GetEnroll.ToString() + "'", conn);

                insert_StudentRecord.ExecuteNonQuery();
                update_Enrollment.ExecuteNonQuery();

                conn.Close();

                string javaScript = "<script language=JavaScript>\n" + "alert('Student successfully Added!!! !!');\n" + "</script>";
                RegisterStartupScript("image1_ClickScript", javaScript);
                Refresh();
                GetEnrollment();
               
            }
        }
        else
            Response.Write("<script>alert('UserName Already Allotted or you have not uploaded any image...')</script>");
    }

    private void Refresh()
    {
       
        Name.Text = "";
        FatherName.Text = "";
        DoB.Text = "";
        Sex.Text = "---SELECT---";
        Phone.Text = "";
        Address.Text = "";
        PinCode.Text = "";
        Email.Text = "";
        UserName.Text = "";
        Password.Text = "";
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Refresh();
    }

    static string getEnroll_Regis;
    protected void rbSelector_CheckedChanged(object sender, System.EventArgs e)
    {
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (FileUpload1.PostedFile.ContentLength > 0)
        {
            s.insert("update [Student_Record] set [Name]='" + Name.Text + "',[FatherName]='" + FatherName.Text + "',[DoB]='" + DoB.Text + "',[Sex]='" + Sex.Text + "',[Phone]='" + Phone.Text + "',[Address]='" + Address.Text + "',[PinCode]='" + PinCode.Text + "',[Email]='" + Email.Text + "',[Class]='" + txtclass.Text + "',[UserName]='" + UserName.Text + "',[Password]='" + Password.Text + "',[ProfileImages]='" + FileUpload1.PostedFile.FileName + "' where [Enrollment]='" + Enrollment.Text + "'");
            string javaScript = "<script language=JavaScript>\n" + "alert('Student successfully Updated!!! !!');\n" + "</script>";
            RegisterStartupScript("image1_ClickScript", javaScript);
        }
        else
        {
            string javaScript = "<script language=JavaScript>\n" + "alert('Please Select Picture!!! !!');\n" + "</script>";
            RegisterStartupScript("image1_ClickScript", javaScript);
        }
    }
}