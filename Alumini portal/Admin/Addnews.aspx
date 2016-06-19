<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/index.master" AutoEventWireup="true"
    CodeFile="Addnews.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            font-size: large;
            text-decoration: underline;
        }
        .style2
        {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td colspan="3">
                <h5 class="style1">
                    <strong>Add News</strong></h5>
            </td>
        </tr>
        <tr>
            <td>
                News Heading
            </td>
            <td class="style2">
                <asp:TextBox ID="txtheading" runat="server" 
                    ontextchanged="txtheading_TextChanged"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator1" runat="server" ErrorMessage="Heading Required" ControlToValidate="txtheading"
                    ValidationGroup="news"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                News
            </td>
            <td class="style2">
                <asp:TextBox ID="txtnews" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator2" runat="server" ErrorMessage="News Required" ControlToValidate="txtnews"
                    ValidationGroup="news"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
            &nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Update" onclick="Button2_Click" Visible="false" />
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#3366CC" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="4">
                    <Columns>
                        <asp:BoundField DataField="Newsid" HeaderText="Newsid" SortExpression="Newsid" />
                        <asp:BoundField DataField="Newsheading" HeaderText="Newsheading" SortExpression="Newsheading" />
                        <asp:BoundField DataField="News" HeaderText="News" SortExpression="News" />
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:Button Text="Edit" runat="server" onclick="Unnamed1_Click" /></ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:Button ID="Delete" Text="Delete" runat="server" onclick="Delete_Click" /></ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="Green" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gpmceConnectionString %>"
                    SelectCommand="SELECT * FROM [News]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
