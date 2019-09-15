<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sys.aspx.cs" Inherits="Amr_Groups.Sys" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">

    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 199px;
        }
        .auto-style2 {
            height: 67px;
        }
        .auto-style3 {
            height: 67px;
            width: 120px;
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style5 {
            width: 120px;
            height: 44px;
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style6 {
            height: 44px;
        }
        .auto-style7 {
            width: 120px;
            height: 58px;
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style8 {
            height: 58px;
        }
        .auto-style9 {
            height: 67px;
            width: 218px;
        }
        .auto-style10 {
            width: 218px;
            height: 44px;
        }
        .auto-style11 {
            width: 218px;
            height: 58px;
        }
        .auto-style12 {
            height: 67px;
            width: 217px;
        }
        .auto-style13 {
            width: 217px;
            height: 44px;
        }
        .auto-style14 {
            width: 217px;
            height: 58px;
        }
        .auto-style15 {
            height: 67px;
            width: 184px;
        }
        .auto-style16 {
            width: 184px;
            height: 44px;
        }
        .auto-style17 {
            width: 184px;
            height: 58px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Images/loggin.jpg" Height="678px">
       <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
             <table class="auto-style1">
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style3">User Name</td>
                <td class="auto-style12">
    
        <asp:TextBox ID="TextBox1" runat="server" Width="220px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="User Name Requried" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style5">&nbsp; Password&nbsp;</td>
                <td class="auto-style13">
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="220px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password Requried" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style7">&nbsp;Login &nbsp;</td>
                <td class="auto-style14">
        <asp:Button ID="Button1" runat="server"   Text="Login" style="font-weight: 700; font-size: large" OnClick="Button1_Click" />
                </td>
                <td class="auto-style8">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" Text="User Name or Password Wrong" Visible="False"></asp:Label>
                </td>
            </tr>
        </table></asp:Panel>
    
    </div>
    </form>
</body>
</html>
