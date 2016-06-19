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
        SqlCommand Registration = new SqlCommand("select [Name],[EnrollmentNo],[Email],[Password],[PassingYear] ,[Branch] ,[CompanyPlaced],[JobProfile] from [Aluminiregistration] where Name='" + TextBox1.Text + "'", conn);
        SqlDataAdapter adapter = new SqlDataAdapter(Registration);
        DataSet ds = new DataSet("Aluminiregistration");
        adapter.Fill(ds, "Aluminiregistration");
        GridView1.DataSource = ds;
        GridView1.DataMember = "Aluminiregistration";
        GridView1.DataBind();

    }
    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        GridViewRow row = btn.NamingContainer as GridViewRow;
        string name = row.Cells[0].Text;
        string email = row.Cells[2].Text;
        Session["name"] = Convert.ToString(name);
        Session["email"] = Convert.ToString(email);
        Response.Redirect("Requestforchat.aspx");
    }
}