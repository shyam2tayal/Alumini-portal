<%@ Page Title="" Language="C#" MasterPageFile="~/indexmaster.master" AutoEventWireup="true"
    CodeFile="index.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="bodyContent" runat="Server">
    <table width="100%">
        <tr>
            <td>
                <table>
                    <tr>
                        <td style="width: 60%" class="style1">
                            <span style="font-weight: normal; text-decoration: underline; font-size: medium"><strong>
                                Introduction </strong></span>
                            <br />
                            A campus is traditionally the land on which a college or university and related
                            institutional buildings are situated. A modern campus is a collection of buildings
                            that belong to a given institution, either academic or non-academic. Usually a campus
                            includes libraries, lecture halls, residence halls, student centers or dining halls,
                            and park-like settings.
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 60%; background-color: Green;">
                            <span style="font-size: large; color: #FFFFFF;">Events</span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                                CellPadding="4" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="Eventname" HeaderText="Eventname" SortExpression="Eventname" />
                                    <asp:BoundField DataField="Eventdetail" HeaderText="Eventdetail" SortExpression="Eventdetail" />
                                    <asp:BoundField DataField="Eventdate" HeaderText="Eventdate" SortExpression="Eventdate" />
                                </Columns>
                                <EditRowStyle BackColor="#7C6F57" />
                                <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                                <HeaderStyle BackColor="Green" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#E3EAEB" />
                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                <SortedAscendingHeaderStyle BackColor="#246B61" />
                                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                <SortedDescendingHeaderStyle BackColor="#15524A" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gpmceConnectionString %>"
                                SelectCommand="SELECT [Eventname], [Eventdetail], [Eventdate] FROM [addevent]">
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 60%; background-color: Green;">
                            <span style="font-size: large; color: #FFFFFF;">News</span>
                        </td>
                    </tr>
                    <tr valign="top">
                        <td>
                            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" BackColor="White"
                                BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both">
                                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                <ItemStyle BackColor="White" ForeColor="Green" />
                                <ItemTemplate>
                                    Newsheading: <b>
                                        <asp:Label ID="NewsheadingLabel" runat="server" Text='<%# Eval("Newsheading") %>' /></b>
                                    <br />
                                    News:
                                    <asp:Label ID="NewsLabel" runat="server" Text='<%# Eval("News") %>' />
                                    <br />
                                    <br />
                                    <hr />
                                </ItemTemplate>
                                <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:gpmceConnectionString %>"
                                SelectCommand="SELECT [Newsheading], [News] FROM [News]"></asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                Company logo
            </td>
        </tr>
        <tr>
            <td style="width: 30%;">
                <table>
                    <tr>
                        <td>
                            <img src="images/logo3.jpg" width="50%" height="50%" />
                        </td>
                        <td style="width: 30%;">
                            <img src="images/logo2.jpg" width="50%" height="50%" />
                        </td>
                        <td style="width: 30%;">
                            <img src="images/logo.jpg" width="50%" height="50%" />
                        </td>
                        <td style="width: 30%;">
                            <img src="images/logo.jpg" width="50%" height="50%" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
