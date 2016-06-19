<%@ Page Language="c#" CodeBehind="~/Student/chatmain.aspx.cs" AutoEventWireup="false" Inherits="SimpleChat._Default" CodeFile="~/Student/chatmain.aspx.cs"  %>

<html>
<head><title></title></head>
<body>
    <form runat="server">
        <table id="Table1" style="z-index: 101; left: 268px; position: absolute; top: 196px"
            cellspacing="1" cellpadding="1" width="300" border="0">
            <tr>
                <td>&nbsp;
                </td>
                <td>
                    <asp:TextBox ID="TB_Channel" runat="server" Visible="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server">Username</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TB_Username" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Required"
                        ControlToValidate="TB_Username"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="BT_Enter" runat="server" Text="Join Chat" OnClick="BT_Enter_Click"></asp:Button>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
