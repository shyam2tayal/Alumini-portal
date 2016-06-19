<%@ Page Language="C#" MasterPageFile="~/Student/index.master" AutoEventWireup="true" EnableEventValidation="false"
    CodeFile="Update.aspx.cs" Inherits="Student_Update" Title="Untitled Page" %>
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
    <table align="center">
        <tr>
            <td>
                <asp:Label ID="Label15" runat="server" CssClass="label" Text="Welcome"></asp:Label>
                <asp:Label ID="Label20" runat="server" CssClass="label" Text=""></asp:Label>
            </td>
        </tr>
    </table>
    <table align="center" style="height: 367px; width: 477px">
        <tr>
            <td height="75" colspan="2">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" class="heading">
                Student Updation Form
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label13" runat="server" CssClass="label" Text="Enrollment No."></asp:Label>
            </td>
            <td class="style1">
                <asp:TextBox ID="Enrollment" runat="server" Width="219px" ReadOnly="true" ToolTip="Enrollment No."></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label1" runat="server" CssClass="label" Text="Name"></asp:Label>
            </td>
            <td class="style1">
                <asp:TextBox ID="Name" runat="server" Width="219px" onkeypress="return AllowAlphabet(event)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Name"
                    ErrorMessage="Name is required." ToolTip="Name is required.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label2" runat="server" CssClass="label" Text="Father Name" onkeypress="return AllowAlphabet(event)"></asp:Label>
            </td>
            <td class="style1">
                <asp:TextBox ID="FatherName" runat="server" Width="219px" onkeypress="return AllowAlphabet(event)"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FatherName"
                    ErrorMessage="Father Name is required." ToolTip="Father Name is required.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label4" runat="server" CssClass="label" Text="Date of Birth"></asp:Label>
            </td>
            <td class="style1">
                <asp:TextBox ID="DoB" runat="server" onblur="return ValidateForm(this)" Width="219px"></asp:TextBox>
                <asp:CalendarExtender runat="server" ID="d" TargetControlID="DoB"></asp:CalendarExtender>
                
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label5" runat="server" CssClass="label" Text="Sex"></asp:Label>
            </td>
            <td class="style1">
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
            <td class="style1">
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
            <td class="style1">
                <asp:TextBox ID="Address" runat="server" Width="219px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Address"
                    ErrorMessage="Address is required." ToolTip="Address is required.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label8" runat="server" CssClass="label" Text="Pin Code"></asp:Label>
            </td>
            <td class="style1">
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
            <td class="style1">
                <asp:TextBox ID="Email" runat="server" Width="219px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Email"
                    ErrorMessage="please enter a valid Email Address" ToolTip="please enter a valid Email Address"
                    SetFocusOnError="true" ValidationExpression="^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label14" runat="server" CssClass="label" Text="Class"></asp:Label>
            </td>
            <td class="style1">
                <asp:DropDownList ID="Class" runat="server" Width="219px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Btech</asp:ListItem>
                    <asp:ListItem>Mtech</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Class"
                    ErrorMessage="Subject is required." ToolTip="Subject is required.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label10" runat="server" CssClass="label" Text="UserName"></asp:Label>
            </td>
            <td class="style1">
                <asp:TextBox ID="UserName" runat="server" Width="219px" ReadOnly="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="UserName"
                    ErrorMessage="UserName is required." ToolTip="UserName is required.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp;
                <asp:Button ID="Button1" runat="server" CommandName="Update" CssClass="button" Text="Update"
                    OnClick="Button1_Click" Width="88px" />
            </td>
        </tr>
    </table>
    <table align="center">
        <tr>
            <td height="75" colspan="2">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" class="heading">
                Change Password
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" CssClass="label" Text="Old password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Oldpass" runat="server" Width="219px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label9" CssClass="label" runat="server">New Password:</asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Password" runat="server" Width="219px" TextMode="Password"></asp:TextBox>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label11" CssClass="label" runat="server">Confirmed Password:</asp:Label>
            </td>
            <td>
                <asp:TextBox ID="ConfirmedPassword" runat="server" Width="219px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password"
                    ControlToValidate="ConfirmedPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match."></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp;
                <asp:Button ID="Button2" runat="server" CommandName="Update" CssClass="button" Text="Update"
                    Width="88px" OnClick="Button2_Click" CausesValidation="False" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .style1
    {
        text-align: left;
    }
</style>
</asp:Content>

