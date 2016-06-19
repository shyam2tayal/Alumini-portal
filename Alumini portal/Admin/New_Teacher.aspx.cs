using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Configuration;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class New_Teacher : System.Web.UI.Page
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
        SqlCommand getEnrollement = new SqlCommand("Select TeacherId from Id", conn);
        GetEnroll = Convert.ToInt32(getEnrollement.ExecuteScalar().ToString());
        Enrollment.Text = "FAC90454" + GetEnroll.ToString();
        GetEnroll = GetEnroll + 1;
        conn.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.PostedFile.ContentLength > 0)
        {
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/images/" + FileUpload1.PostedFile.FileName));

            conn.Open();
            SqlCommand Validate_userName = new SqlCommand("Select username from Teacher_Record where UserName ='" + UserName.Text + "'", conn);
            if (Validate_userName.ExecuteScalar() == null)
            {

                SqlCommand insert_TeacherRecord = new SqlCommand("insert into Teacher_Record values('" + Enrollment.Text + "','" + Name.Text + "','" + FatherName.Text + "','" + DoB.Text + "','" + Sex.Text + "','" + Phone.Text + "','" + Address.Text + "','" + PinCode.Text + "','" + Email.Text + "','" + Subject.Text + "','" + UserName.Text + "','" + Password.Text + "','" + DateTime.Now.ToLongDateString() + "," + DateTime.Now.ToLongTimeString() + "','" + ddltype.Text + "','" + FileUpload1.PostedFile.FileName + "')", conn);
                SqlCommand update_Enrollment = new SqlCommand("update Id set TeacherId ='" + GetEnroll.ToString() + "'", conn);

                insert_TeacherRecord.ExecuteNonQuery();
                update_Enrollment.ExecuteNonQuery();

                conn.Close();
                string javaScript = "<script language=JavaScript>\n" + "alert('Teacher successfully Added!!! !!');\n" + "</script>";
                RegisterStartupScript("image1_ClickScript", javaScript);
                Refresh();
                GetEnrollment();
                //GridView1.DataBind();

            }
            else
                Response.Write("<script>alert('UserName Already Allotted or you hae not uploaded any image...')</script>");
        }
        else
        {
            Response.Write("<script>alert('You have not uploaded any image...')</script>");
        }
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
        Subject.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Refresh();
    }
    
    protected void rbSelector_CheckedChanged(object sender, System.EventArgs e)
    {
        //Clear the existing selected row 
         foreach (GridViewRow oldrow in GridView1.Rows)
          {
              ((RadioButton)oldrow.FindControl("radio")).Checked = false;
          }

          //Set the new selected row
          RadioButton rb = (RadioButton)sender;
          GridViewRow row = (GridViewRow)rb.NamingContainer;
          ((RadioButton)row.FindControl("radio")).Checked = true;
          Enrollment.Text = row.Cells[0].Text;
          Name.Text = row.Cells[1].Text;
          FatherName.Text = row.Cells[2].Text;
          DoB.Text = row.Cells[3].Text;
          Sex.Text = row.Cells[4].Text;
          Phone.Text = row.Cells[5].Text;
          Address.Text = row.Cells[6].Text;
          PinCode.Text = row.Cells[7].Text;
          Email.Text = row.Cells[8].Text;
          Subject.Text = row.Cells[9].Text;
          UserName.Text = row.Cells[10].Text;
          Button3.Visible = true;
          Button2.Visible = false;
          Button1.Visible = false;
          
     
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        if (FileUpload1.PostedFile.ContentLength > 0)
        {
            s.insert("update [Teacher_Record] set [Name]='" + Name.Text + "',[FatherName]='" + FatherName.Text + "',[DoB]='" + DoB.Text + "',[Sex]='" + Sex.Text + "',[Phone]='" + Phone.Text + "',[Address]='" + Address.Text + "',[PinCode]='" + PinCode.Text + "',[Email]='" + Email.Text + "',[Subject]='" + Subject.Text + "',[UserName]='" + UserName.Text + "',[Password]='" + Password.Text + "',[ProfileImages]='" + FileUpload1.PostedFile.FileName + "' where [Enrollment]='" + Enrollment.Text + "'");
            string javaScript = "<script language=JavaScript>\n" + "alert('Teacher successfully Updated!!! !!');\n" + "</script>";
            RegisterStartupScript("image1_ClickScript", javaScript);
        }
        else
        {
            string javaScript = "<script language=JavaScript>\n" + "alert('Please Select Picture!!! !!');\n" + "</script>";
            RegisterStartupScript("image1_ClickScript", javaScript);
        }
    }
    protected void Enrollment_TextChanged(object sender, EventArgs e)
    {

    }
}
