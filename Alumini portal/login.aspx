<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" MasterPageFile="~/index.master"
    Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style2
        {
            text-decoration: underline;
        }
        .label
        {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center" width="100%">
        <tr>
            <td>
                <table align="center">
                    <tr>
                        <td colspan="2" class="center">
                            <span class="style2"><strong>Log In</strong></span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" CssClass="label" Text="Login Type"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="UType" runat="server" Width="219px">
                                <asp:ListItem>---SELECT---</asp:ListItem>
                                <asp:ListItem>ADMIN</asp:ListItem>
                                <asp:ListItem>TEACHER</asp:ListItem>
                                <asp:ListItem>STUDENT</asp:ListItem>
                                <asp:ListItem>ALUMINI</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="UType"
                                ErrorMessage="please make a Selection" InitialValue="---SELECT---" ToolTip="Selection is required.">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label CssClass="label" ID="Label2" runat="server" Text="Email"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="UName" runat="server" Width="219px" ToolTip="Enrollment"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UName"
                                ErrorMessage="User Name is required." ToolTip="User Name is required.">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" CssClass="label" runat="server" Text="Password"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="Pwd" runat="server" TextMode="Password" Width="219px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Pwd"
                                ErrorMessage="Password is required." ToolTip="Password is required.">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            &nbsp;
                            <asp:Button ID="Button1" runat="server" CommandName="Log In" CssClass="button" Text="Log In"
                                OnClick="Button1_Click1" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
