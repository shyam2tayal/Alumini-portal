<%@ Page Title="" Language="C#" MasterPageFile="~/placementmaster.master" AutoEventWireup="true"
    CodeFile="studentregistrationform.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="bodyContent" runat="Server">
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
    <table style="width: 100%;">
        <tr>
            <td colspan="2" style="text-decoration: underline">
                <strong>Alumini Registration </strong>
            </td>
        </tr>
        <tr>
            <td>
                Name
            </td>
            <td>
                <asp:TextBox ID="txtname" runat="server" onkeypress="return AllowAlphabet(event)"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Enrollment No.
            </td>
            <td>
                <asp:TextBox ID="txtenroll" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Email
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Password
            </td>
            <td>
                <asp:TextBox ID="txtpwd" TextMode="Password" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Passing Year
            </td>
            <td>
                <asp:DropDownList ID="ddlyear" runat="server" Width="28%">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Branch
            </td>
            <td>
                <asp:DropDownList ID="ddlbranch" runat="server" Width="28%">
                    <asp:ListItem>SELECT</asp:ListItem>
                    <asp:ListItem>CS</asp:ListItem>
                    <asp:ListItem>IT</asp:ListItem>
                    <asp:ListItem>ECE</asp:ListItem>
                    <asp:ListItem>MECHANICAL</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Company Placed
            </td>
            <td>
                <asp:TextBox ID="txtcompany" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Job Profile
            </td>
            <td>
                <asp:TextBox ID="txtjobprofile" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
