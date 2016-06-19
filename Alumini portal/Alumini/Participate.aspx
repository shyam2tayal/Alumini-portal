<%@ Page Title="" Language="C#" MasterPageFile="~/Student/index.master" AutoEventWireup="true"
    CodeFile="Participate.aspx.cs" Inherits="Student_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            color: #FFFFFF;
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%;">
        <tr>
            <td colspan="3" class="style1">
                <strong>Participate </strong>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Eventid" HeaderText="Eventid" InsertVisible="False" ReadOnly="True"
                            SortExpression="Eventid" />
                        <asp:BoundField DataField="Eventname" HeaderText="Eventname" SortExpression="Eventname" />
                        <asp:BoundField DataField="Eventdetail" HeaderText="Eventdetail" SortExpression="Eventdetail" />
                        <asp:BoundField DataField="Eventdate" HeaderText="Eventdate" SortExpression="Eventdate" />
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:Button ID="Button1" Text="Select" runat="server" OnClick="Unnamed1_Click" /></ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gpmceConnectionString %>"
                    SelectCommand="SELECT [Eventid], [Eventname], [Eventdetail], [Eventdate] FROM [addevent]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
