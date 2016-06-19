<%@ Page Title="" Language="C#" AutoEventWireup="true"
     CodeFile="chatting.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


    <script type="text/javascript" src="Scripts/jquery-1.4.1-vsdoc.js"></script>
<html>
<head><title></title></head>
<body>
    <form>
    <table width="70%">
        <tr>
            <td>
                Online User
            </td>
        </tr>
        <tr>
            <td>
                <table cellpadding="5" cellspacing="5" width="70%">
                    <tr>
                        <td>
                            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand"
                                OnItemDataBound="DataList1_ItemDataBound">
                                <ItemTemplate>
                                    <asp:LinkButton ID="nameLabel" runat="server" CommandArgument='<%# Eval("name") %>'
                                        CommandName="cp" Text='<%# Eval("name") %>' Style="text-decoration: none;" />
                                    <br />
                                    <br />
                                </ItemTemplate>
                            </asp:DataList>
                        </td>
                        <td>
                            <asp:Timer ID="Timer1" runat="server" Interval="6000" OnTick="Timer1_Tick">
                            </asp:Timer>
                            <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
                                <%-- UpdateMode for Update Panel is set Conditional as it will update it's content based upon condition  --%>
                                <Triggers>
                                    <%-- Triggers contains the list of events that will force update panel to update it's content asynchronously--%>
                                    <%-- Tick event of timer1 has been selected as Triggering event for asynchronous updation of update panel data which will be executed at each time-interval(10 seconds) specified --%>
                                    <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                                </Triggers>
                                <ContentTemplate>
                                    <div style="overflow-y: scroll; overflow-x: scroll; position: relative; width: 300px;
                                        height: 160px;">
                                        <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" Style="overflow: auto;"
                                            BorderStyle="Solid" Width="50%">
                                            <ItemTemplate>
                                                <asp:Label ID="chatfromLabel" runat="server" Text='<%# Eval("chatfrom") %>' Visible="false" />
                                                <br />
                                                <asp:Label ID="chattoLabel" runat="server" Text='<%# Eval("chatto") %>' Visible="true" />
                                                <br />
                                                <asp:Label ID="messageLabel" runat="server" Text='<%# Eval("message") %>' />
                                                <br />
                                                <br />
                                            </ItemTemplate>
                                        </asp:DataList>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Userid %>"
                                SelectCommand="SELECT * FROM [chat] WHERE (([chatfrom] = @chatfrom) or ([chatto] = @chatto)) order by msgid asc">
                                <SelectParameters>
                                    <asp:SessionParameter Name="chatfrom" SessionField="empusername" Type="String" />
                                    <asp:SessionParameter Name="chatto" SessionField="empusername" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <br />
                            <asp:TextBox runat="server" ID="tbmsg" 
                                Width="282px"></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" Text="send" OnClick="send" />
                        </td>
                    </tr>
                </table>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Userid %>"
                    SelectCommand="SELECT userid,[name] FROM [Userregistration] WHERE ([status] = @status)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="online" Name="status" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
                &nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="false"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnShowPopup" runat="server" Style="display: none" />
                <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="btnShowPopup"
                    PopupControlID="pnlpopup" CancelControlID="btnCancel" EnableViewState="true">
                </asp:ModalPopupExtender>
                <asp:Panel ID="pnlpopup" runat="server" BackColor="#663300" Height="300px" Width="400px"
                    Style="display: none">
                    <table width="100%" style="border: Solid 3px #000000; width: 60%; height: 40%; overflow: auto;"
                        cellpadding="0" cellspacing="0">
                        <tr style="background-color: ">
                            <td colspan="2" style="height: 10%; color: White; font-weight: bold; font-size: larger"
                                align="center">
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                Message:
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <asp:Button ID="btnUpdate" runat="server" Text="Submit" />
                                <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
 </table>
    </form>
</body>
</html>

