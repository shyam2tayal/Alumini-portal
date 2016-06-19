<%@ Page Title="" Language="C#" MasterPageFile="~/Student/index.master" AutoEventWireup="true"
    CodeFile="participantdetail.aspx.cs" Inherits="Student_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%;">
        <tr>
            <td colspan="2">
                <span class="style1"><strong>Details</strong></span>
            </td>
        </tr>
        <tr>
            <td>
                Event Id
            </td>
            <td>
                <asp:Label ID="lbleventid" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Event Name
            </td>
            <td>
                <asp:Label ID="lbleventname" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Name
            </td>
            <td>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Contact
            </td>
            <td>
                <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Email
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Role
            </td>
            <td>
                <asp:TextBox ID="txtrole" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
