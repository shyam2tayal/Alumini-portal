using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Student_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["Name"] = "somilloani@hotmail.com";
    }
    protected void Approve_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        GridViewRow row = btn.NamingContainer as GridViewRow;
        string email = row.Cells[2].Text;
        SendEmail(email, "Request Approval", "Your Request has been approved");

    }

    protected string SendEmail(string toAddress, string subject, string body)
    {
        string result = "Message Sent Successfully..!!";
        string senderID = "projectparcel11@gmail.com";// use sender’s email id here..
        const string senderPassword = "projectparcel"; // sender password here…
        try
        {
            SmtpClient smtp = new SmtpClient
            {
                Host = "smtp.gmail.com", // smtp server address here…
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                Credentials = new System.Net.NetworkCredential(senderID, senderPassword),
                Timeout = 30000,
            };
            MailMessage message = new MailMessage(senderID, toAddress, subject, body);
            smtp.Send(message);
        }
        catch (Exception ex)
        {
            result = "Error sending email.!!!";
        }
        return result;
    }
    protected void Delete_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        GridViewRow row = btn.NamingContainer as GridViewRow;
        Response.Redirect("chatmain.aspx");

    }
}