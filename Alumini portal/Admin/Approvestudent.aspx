<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/index.master" AutoEventWireup="true"
    CodeFile="Approvestudent.aspx.cs" Inherits="Admin_Default" %>

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
            <td colspan="3" class="style1">
                <strong>Student </strong>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Panel ID="Panel1" runat="server" ScrollBars="Horizontal" Width="90%">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="EnrollmentNo" HeaderText="EnrollmentNo" SortExpression="EnrollmentNo" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="PassingYear" HeaderText="PassingYear" SortExpression="PassingYear" />
                            <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" />
                            <asp:BoundField DataField="CompanyPlaced" HeaderText="CompanyPlaced" SortExpression="CompanyPlaced" />
                            <asp:BoundField DataField="JobProfile" HeaderText="JobProfile" SortExpression="JobProfile" />
                            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                            <asp:TemplateField HeaderText="Status">
                                <ItemTemplate>
                                    <asp:Button runat="server" ID="Status" Text="Approve" onclick="Status_Click" /></ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </asp:Panel>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gpmceConnectionString %>"
                    SelectCommand="SELECT * FROM [Aluminiregistration] WHERE ([Status] = @Status)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Pending" Name="Status" Type="String" />
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
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
