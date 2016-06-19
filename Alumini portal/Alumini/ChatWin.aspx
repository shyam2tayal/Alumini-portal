<%@ Page Language="c#" CodeBehind="~/Student/ChatWin.aspx.cs" AutoEventWireup="false" 
    Inherits="SuperJockey.ChatWin" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>
<html>
<head><title></title></head>
<body>
    <form runat="server">
        <table id="Table6" cellspacing="0" cellpadding="0" width="456" align="center" border="0">
            <tr>
                <td bgcolor="#3366ff" height="22" rowspan="2" width="224" valign="bottom">
                    <strong>Chat</strong>
                </td>
                <td valign="bottom" align="right" width="224" bgcolor="#3366ff" height="22" rowspan="2">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td width="8" height="8"></td>
            </tr>
            <tr>
                <td bgcolor="#3366ff" height="14"></td>
                <td bgcolor="#3366ff" height="14"></td>
            </tr>
        </table>
        <table id="Table3" cellspacing="0" cellpadding="1" border="0" align="center" bgcolor="#3366ff">
            <tr>
                <td>
                    <iframe style="border-right: orange 2px solid; border-top: #3366ff 2px solid; border-left: #3366ff 2px solid; width: 450px; border-bottom: #3366ff 2px solid; height: 250px; background-color: #3366ff"
                        src="TheChatScreenWin.aspx">Chat</iframe>
                </td>
            </tr>
            <tr>
                <td align="right">Message:
                <asp:TextBox ID="TB_ToSend" runat="server" Width="300px" TabIndex="1"></asp:TextBox>
                    <asp:Button ID="BT_Send" runat="server" Text="Send" Width="80px" CssClass="button1"
                        TabIndex="2"></asp:Button>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>


