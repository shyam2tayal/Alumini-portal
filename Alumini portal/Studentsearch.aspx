<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true"
    CodeFile="Studentsearch.aspx.cs" Inherits="_Default" %>

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
                <strong>Search Student </strong>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp; <strong>Search Student</strong>
            </td>
            <td>
                &nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="EnrollmentNo" HeaderText="EnrollmentNo" SortExpression="EnrollmentNo" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="PassingYear" HeaderText="PassingYear" SortExpression="PassingYear" />
                        <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" />
                        <asp:BoundField DataField="CompanyPlaced" HeaderText="CompanyPlaced" SortExpression="CompanyPlaced" />
                        <asp:BoundField DataField="JobProfile" HeaderText="JobProfile" SortExpression="JobProfile" />
                      
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
