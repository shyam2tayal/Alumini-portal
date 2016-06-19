using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["gpmce"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GetGridvalues();
    }
    private void GetGridvalues()
    {
        SqlCommand Registration = new SqlCommand("Select Name,FatherName,Enrollment,ProfileImages,Subject,email from Teacher_Record where Name='" + TextBox1.Text + "'", conn);
        SqlDataAdapter adapter = new SqlDataAdapter(Registration);
        DataSet ds = new DataSet("Teacher_Record");
        adapter.Fill(ds, "Teacher_Record");
        GridView1.DataSource = ds;
        GridView1.DataMember = "Teacher_Record";
        GridView1.DataBind();

    }
}