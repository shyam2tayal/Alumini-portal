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
            Label1 .Text = Session["ID"].ToString();

            if (!IsPostBack)
            {
                
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from [Aluminiregistration] where id='" + Session["ID"].ToString() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    
                    txtname.Text = dr[1].ToString();
                    txtenroll.Text = dr[2].ToString();
                    txtemail.Text = dr[3].ToString();
                    txtpwd.Text = dr[4].ToString();
                    ddlyear.Text = dr[5].ToString();
                    ddlbranch.Text = dr[6].ToString();
                    txtcompany.Text = dr[7].ToString();
                    txtjobprofile.Text = dr[8].ToString();
                   
                }
                con.Close();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        con.Open();
        SqlCommand cmd = new SqlCommand("update Aluminiregistration set [Name]='" + txtname.Text + "',[EnrollmentNo]='" + txtenroll.Text + "',[Email]='" + txtemail.Text + "',[Password]='" + txtpwd.Text + "',[PassingYear]='" + ddlyear.Text + "',[Branch]='" + ddlbranch.Text + "',[CompanyPlaced]='" + txtcompany.Text + "',[JobProfile]='" + txtjobprofile.Text + "' where id='" + Label1.Text + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        string javaScript = "<script language=JavaScript>\n" + "alert('Information updated successfully !!! !!');\n" + "</script>";
        RegisterStartupScript("image1_ClickScript", javaScript);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       
    } 
}
