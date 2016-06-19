<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true"
    CodeFile="Teachersearch.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%;">
        <tr>
            <td colspan="2">
                Search Teacher
            </td>
        </tr>
        <tr>
            <td>
                &nbsp; Search Teacher
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
                        <asp:BoundField DataField="Enrollment" HeaderText="Enrollment" SortExpression="Enrollment" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                        <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                                <asp:Image runat="server" ID="img" ImageUrl='<%#"~/images/"+ Eval("ProfileImages") %>'
                                    Height="131px" Width="150px" /></ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                
            </td>
        </tr>
    </table>
</asp:Content>
