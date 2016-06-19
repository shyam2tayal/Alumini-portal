using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "cmd")
            {
                string filename = e.CommandArgument.ToString();
                string path = MapPath("~/Assignment/" + filename);
                byte[] bts = System.IO.File.ReadAllBytes(path);
                Response.Clear();
                Response.ClearHeaders();
                Response.AddHeader("Content-Type", "Application/octet-stream");
                Response.AddHeader("Content-Length", bts.Length.ToString());
                Response.AddHeader("Content-Disposition", "attachment; filename=" + filename);
                Response.BinaryWrite(bts);
                Response.Flush();
                Response.End();
            }
        }
        catch (Exception ex)
        {
            string javaScript = "<script language=JavaScript>\n" + "alert('No resume found !!');\n" + "</script>";
            RegisterStartupScript("image1_ClickScript", javaScript);
        }
    }
}