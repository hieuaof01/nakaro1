<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ASPQLSV.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Phan Trung Hiếu CQ57/41.01 STT : 14</title>
    <style type="text/css">
         html,body{
            background-image: linear-gradient(78deg,rgba(245, 238, 245,0.5),rgba(191, 204, 154,0.6)),url(../Images/Financial.jpg) ;
            background-size : contain;
       }
         
        .auto-style2 {
           width: 200px;
        }
    </style>
    <link rel="stylesheet" href="../CSS/LoginMain.css"/>
</head>
<body>
    <div class="account">
        TK phantrunghieu MK 
        TK admin         MK 
        TK hieu14        MK 
    </div>
     <div class="form_signin">
         <form id="formlogin" runat="server">
            <table style="width:80%;">
                <div class="tieude">
                     <h3 align="center">Đăng nhập hệ thống <br />Phan Trung Hiếu CQ57/41.01</h3>
                </div>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tên đăng nhập <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>(*)</span></td>
                    <td>
                        <asp:TextBox ID="txtTenDN" runat="server" Height="26px" Width="250px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTenDN" ErrorMessage="Nhập username" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mật Khẩu <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>(*)</span></td>
                    <td>
                        <asp:TextBox ID="txtMatKhau" runat="server" Height="26px" TextMode="Password" Width="250px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMatKhau" ErrorMessage="Nhập password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td colspan="2">
                        <asp:Button ID="btnDangNhap" runat="server" OnClick="btnDangNhap_Click" Text="Đăng Nhập" />
                    </td>
                </tr>
            </table>
          </form>
       </div>
</body>
</html>
