<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="NewUser.aspx.cs" Inherits="Amr_Groups.NewUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br /> <br /> <br />
    <table class="nav-justified">
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style23" colspan="2"><strong>انشـــاء مستخدم جديد</strong></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13"></td>
        <td class="auto-style10">اسم المستــخدم</td>
        <td class="auto-style4">
            <asp:TextBox ID="TextBox1" runat="server" Height="23px" Width="266px"></asp:TextBox>
        </td>
        <td class="auto-style5">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style15"></td>
        <td class="auto-style16">الرقم الســــري</td>
        <td class="auto-style17">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="23px" Width="266px"></asp:TextBox>
        </td>
        <td class="auto-style18">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style13"></td>
        <td class="auto-style10">تــأكيدالرقم الســــري</td>
        <td class="auto-style4">
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Height="23px" Width="266px"></asp:TextBox>
        </td>
        <td class="auto-style5">
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="CheckPass" Font-Bold="True" ForeColor="Red"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style19"></td>
        <td class="auto-style20"></td>
        <td class="auto-style21">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Create " Font-Bold="True"  Height="42px" Width="116px"  />
        </td>
        <td class="auto-style22"></td>
    </tr>
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td class="auto-style2">
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#009900" Text="Creation Done" Visible="False"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
