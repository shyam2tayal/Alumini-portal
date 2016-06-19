<%@ Page Language="C#" MasterPageFile="~/Admin/index.master" AutoEventWireup="true"
    CodeFile="New_Teacher.aspx.cs" Inherits="New_Teacher" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<script type="text/javascript">
    function AllowAlphabet(e) {
        isIE = document.all ? 1 : 0
        keyEntry = !isIE ? e.which : event.keyCode;
        if (((keyEntry >= '65') && (keyEntry <= '90')) || ((keyEntry >= '97') && (keyEntry <= '122')) || (keyEntry == '46') || (keyEntry == '32') || keyEntry == '45')
            return true;
        else {
            alert('Please Enter Only Character values.');
            return false;
        }
    }

    </script>
    <script language="javascript" type="text/javascript">
        function CheckNumeric(e) {

            if (window.event) // IE 
            {
                if ((e.keyCode < 48 || e.keyCode > 57) & e.keyCode != 8) {
                    event.returnValue = false;
                    return false;

                }
            }
            else { // Fire Fox
                if ((e.which < 48 || e.which > 57) & e.which != 8) {
                    e.preventDefault();
                    return false;

                }
            }
        }
     
    </script>
    <table align="center" width="90%">
        <tr valign="top">
            <td colspan="2" align="center" valign="top" height="50" style="font-size: 18px; font-weight: bold;">
                <asp:Label ID="welcome" runat="server" CssClass="label" Text="Welcome"></asp:Label>
                <asp:Label ID="label16" runat="server" CssClass="label" Text=""></asp:Label>
            </td>
        </tr>
        <tr valign="top">
            <td align="center" colspan="2" class="style2">
                Teacher Registration Form
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label9" runat="server" CssClass="label" Text="Type"></asp:Label>
            </td>
            <td class="style3">
                <asp:DropDownList ID="ddltype" runat="server">
                    <asp:ListItem>Teacher</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ControlToValidate="ddltype"
                    InitialValue="Select" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label13" runat="server" CssClass="label" Text="Enrollment No."></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="Enrollment" runat="server" Width="219px" ReadOnly="true" 
                    ontextchanged="Enrollment_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label1" runat="server" CssClass="label" Text="Name"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="Name" runat="server" Width="219px" onkeypress="return AllowAlphabet(event)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Name"
                    ErrorMessage="Name is required." ToolTip="Name is required.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label2" runat="server" CssClass="label" Text="Father Name"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="FatherName" runat="server" Width="219px" onkeypress="return AllowAlphabet(event)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FatherName"
                    ErrorMessage="Father Name is required." ToolTip="Father Name is required.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label4" runat="server" CssClass="label" Text="Date of Birth"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="DoB" runat="server" Width="219px"></asp:TextBox>
                <asp:CalendarExtender ID="DoB_CalendarExtender" runat="server" Enabled="True" TargetControlID="DoB">
                </asp:CalendarExtender>
                <%-- <asp:RegularExpressionValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="DoB"
                        ErrorMessage="Date of birth is required." ToolTip="Date of birth is required."
                        ValidationExpression="^([0]?[1-9]|[1|2][0-9]|[3][0|1])[./-]([0]?[1-9]|[1][0-2])[./-]([0-9]{4}|[0-9]{2})$"
                        SetFocusOnError="true">*</asp:RegularExpressionValidator>--%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*"
                    ControlToValidate="DoB"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label5" runat="server" CssClass="label" Text="Sex"></asp:Label>
            </td>
            <td class="style3">
                <asp:DropDownList ID="Sex" runat="server" Width="219px">
                    <asp:ListItem>---SELECT---</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Sex"
                    ErrorMessage="please make a Selection" InitialValue="---SELECT---" ToolTip="Selection is required.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label6" runat="server" CssClass="label" Text="Phone No"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="Phone" runat="server" Width="219px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Phone"
                    ErrorMessage="Phone No. is required." ToolTip="Phone No. is required.">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator runat="server" ID="rev" ControlToValidate="Phone"
                    ErrorMessage="invalid phone no" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label7" runat="server" CssClass="label" Text="Address"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="Address" runat="server" Width="219px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Address"
                    ErrorMessage="Address is required." ToolTip="Address is required.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label8" runat="server" CssClass="label" Text="Pin Code"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="PinCode" runat="server" Width="219px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="PinCode"
                    ErrorMessage="Pin Code is required." ToolTip="Pin Code is required.">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="invalid pincode"
                    ValidationExpression="[0-9]{6}" ControlToValidate="Pincode"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label12" runat="server" CssClass="label" Text="E-mail"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="Email" runat="server" Width="219px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Email"
                    ErrorMessage="please enter a valid Email Address" ToolTip="please enter a valid Email Address"
                    SetFocusOnError="true" ValidationExpression="^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label14" runat="server" CssClass="label" Text="Subject"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="Subject" runat="server" Width="219px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Subject"
                    ErrorMessage="Subject is required." ToolTip="Subject is required.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label10" runat="server" CssClass="label" Text="UserName"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="UserName" runat="server" Width="219px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="UserName"
                    ErrorMessage="UserName is required." ToolTip="UserName is required.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label3" CssClass="label" runat="server">Password:</asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="Password" runat="server" Width="219px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password"
                    ErrorMessage="Password is required." ToolTip="Password is required.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label11" CssClass="label" runat="server">Confirmed Password:</asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="ConfirmedPassword" runat="server" Width="219px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ConfirmedPassword"
                    ErrorMessage="Confirmed Password is required." ToolTip="Confirmed Password is required.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
       
        <tr>
            <td>
                <asp:Label ID="Label15" CssClass="label" runat="server">Image:</asp:Label>
            </td>
            <td class="style3">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" class="style3">
                &nbsp;
                <asp:Button ID="Button1" runat="server" CommandName="Save" CssClass="button" Text="Save"
                    OnClick="Button1_Click" Width="88px" />
                <asp:Button ID="Button2" runat="server" CommandName="Reset" CssClass="button" Text="Reset"
                    Width="88px" CausesValidation="False" OnClick="Button2_Click" />
            &nbsp;<asp:Button ID="Button3" runat="server" Text="Update" onclick="Button3_Click" 
                    Visible="False" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password"
                    ControlToValidate="ConfirmedPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match."></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Panel runat="server" ID="panel1" ScrollBars="Horizontal" Width="70%">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" DataSourceID="SqlDataSource2"
                        AutoGenerateColumns="False">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Enrollment" HeaderText="Enrollment" SortExpression="Enrollment" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="FatherName" HeaderText="FatherName" SortExpression="FatherName" />
                            <asp:BoundField DataField="DoB" HeaderText="DoB" SortExpression="DoB" />
                            <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            <asp:BoundField DataField="PinCode" HeaderText="PinCode" SortExpression="PinCode" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                            <asp:BoundField DataField="DateTime" HeaderText="DateTime" SortExpression="DateTime" />
                            <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                                <asp:Image runat="server" ID="img" ImageUrl='<%#"~/images/"+ Eval("ProfileImages") %>'
                                    Height="131px" Width="150px" /></ItemTemplate>
                        </asp:TemplateField>
                            <asp:TemplateField HeaderText="Action">
                                <ItemTemplate>
                                    <asp:RadioButton ID="radio" runat="server" Checked="false" OnCheckedChanged="rbSelector_CheckedChanged"
                                        AutoPostBack="true" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                </asp:Panel>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:gpmceConnectionString %>"
                    SelectCommand="SELECT * FROM [Teacher_Record]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
        .style2
        {
            text-decoration: underline;
            text-align: center;
        }
        .style3
        {
            text-align: left;
        }
    </style>
</asp:Content>
