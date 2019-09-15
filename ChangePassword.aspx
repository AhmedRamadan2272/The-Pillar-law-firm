<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Amr_Groups.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br /> <br /> <br />
    <table class="nav-justified " style="border:dashed ; border-color:blue ;border-width:medium" >
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style9" style="width: 119px"></td>
            <td class="auto-style10"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style20" style="height: 85px"></td>
            <td class="auto-style3" style="width: 119px; height: 85px;">كلمه السر القديمه</td>
            <td class="auto-style4" style="height: 85px">
                <asp:TextBox ID="TextBox1" runat="server" Height="23px" TextMode="Password" Width="266px"></asp:TextBox>
            </td>
            <td class="auto-style5" style="height: 85px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="الرقم الســري القديم مطلوب" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style21" style="height: 67px"></td>
            <td class="auto-style18" style="width: 119px; height: 67px;">كلمه السر الجديده</td>
            <td class="auto-style12" style="height: 67px">
                <asp:TextBox ID="TextBox2" runat="server" Height="23px" TextMode="Password" Width="266px"></asp:TextBox>
                <br />
            </td>
            <td style="height: 67px"></td>
        </tr>
        <tr>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style6" style="width: 119px">تأكيدكلمه السر الجديده</td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox3" runat="server"  Height="23px" TextMode="Password" Width="266px"></asp:TextBox>
            </td>
            <td class="auto-style8">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox2" ErrorMessage="الرقم السري غير متطابق" Font-Bold="True" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style18" style="width: 119px">Chang it</td>
            <td class="auto-style12">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click" Text="Change Password"  Height="42px" Width="179px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style17" style="width: 119px">&nbsp;</td>
            <td class="auto-style12">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Red" Text="الرقم السري القديم خطأ" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
 