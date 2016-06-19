<%@ Page Title="" Language="C#" MasterPageFile="~/Student/index.master" AutoEventWireup="true"
    CodeFile="Viewrequest.aspx.cs" Inherits="Student_Default" %>

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
                <span class="style1"><strong>Request</strong></span>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True"
                            SortExpression="Id" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                        <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
                        <asp:TemplateField HeaderText="Approve">
                            <ItemTemplate>
                                <asp:Button ID="Approve" Text="Approve" runat="server" 
                                    onclick="Approve_Click" /></ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Chat">
                            <ItemTemplate>
                                <asp:Button ID="Delete" Text="Chat" runat="server" onclick="Delete_Click" /></ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gpmceConnectionString %>"
                    SelectCommand="SELECT [Id], [Name], [Email], [Contact], [Message] FROM [Request] WHERE ([AluminiEmail] = @AluminiEmail)">
                    <SelectParameters>
                        <asp:SessionParameter Name="AluminiEmail" SessionField="Name" Type="String" />
                    </SelectParameters>
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
        </tr>
    </table>
</asp:Content>
