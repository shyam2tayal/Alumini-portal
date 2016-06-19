<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true"
    CodeFile="Requestforchat.aspx.cs" Inherits="_Default" %>

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
                <span class="style1"><strong>Detail</strong></span>
            </td>
        </tr>
        <tr>
            <td>
                Alumini Name
            </td>
            <td>
                <asp:Label ID="lblalumininame" runat="server" Text="Label"></asp:Label>
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
                Email
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Contact
            </td>
            <td>
                <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
            </td>
        </tr> <tr>
            <td>
                Message
            </td>
            <td>
                <asp:TextBox ID="txtmsg" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
