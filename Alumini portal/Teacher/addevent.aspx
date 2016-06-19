<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/index.master" AutoEventWireup="true"
    CodeFile="addevent.aspx.cs" Inherits="Teacher_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td colspan="3">
                Add Events
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Event Name
            </td>
            <td>
                <asp:TextBox ID="txteventname" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator1" runat="server" ErrorMessage="Event name Required"
                    ControlToValidate="txteventname"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Event Detail
            </td>
            <td>
                <asp:TextBox ID="txtdetail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Event Detail Required"
                    ControlToValidate="txtdetail"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Event Date
            </td>
            <td>
                <asp:TextBox ID="txtdate" runat="server"></asp:TextBox>
                <asp:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" Enabled="True"
                    TargetControlID="txtdate">
                </asp:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Event Date Required"
                    ControlToValidate="txtdate"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            &nbsp;<asp:Button ID="Button3" runat="server" Text="Update" Visible="False" 
                    onclick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                    BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px"
                    CellPadding="4">
                    <Columns>
                        <asp:BoundField DataField="Eventid" HeaderText="Eventid" SortExpression="Eventid" />
                        <asp:BoundField DataField="Eventname" HeaderText="Eventname" SortExpression="Eventname" />
                        <asp:BoundField DataField="Eventdetail" HeaderText="Eventdetail" SortExpression="Eventdetail" />
                          <asp:BoundField DataField="Eventdate" HeaderText="Eventdate" SortExpression="Eventdate" />
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:Button ID="Button2" Text="Edit" runat="server" OnClick="Unnamed1_Click" CausesValidation="false" /></ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:Button ID="Delete" Text="Delete" runat="server" OnClick="Delete_Click" CausesValidation="false"/></ItemTemplate>
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
                    SelectCommand="SELECT * FROM [addevent]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
