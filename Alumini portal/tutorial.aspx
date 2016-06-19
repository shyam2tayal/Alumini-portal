<%@ Page Title="" Language="C#" MasterPageFile="~/studentmaster.master" AutoEventWireup="true"
    CodeFile="tutorial.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="bodyContent" runat="Server">
    <table style="width: 100%;">
        <tr>
            <td>
                Tutorials
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" onrowcommand="GridView1_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="Assignmentname" HeaderText="Assignmentname" SortExpression="Assignmentname" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        <asp:TemplateField HeaderText="Download">
                            <ItemTemplate>
                                <asp:LinkButton runat="server" ID="download" CommandName="cmd" CommandArgument='<%#Eval("FileName") %>'>Download</asp:LinkButton></ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gpmceConnectionString %>"
                    SelectCommand="SELECT [Assignmentname], [Description], [Filename] FROM [assignment]">
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
