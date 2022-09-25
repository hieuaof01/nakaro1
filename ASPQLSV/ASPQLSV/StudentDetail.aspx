<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentDetail.aspx.cs" Inherits="ASPQLSV.StudentDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Phan Trung Hiếu CQ57/41.01 STT14</title>
    <style type="text/css">
        *{
            padding: 0;
            margin : 0;
            box-sizing:border-box;
       }
        html,body{
            background-color : #f0f2f5;
       }
        .auto-style1 {
            max-width: 800px;
        }
        .auto-style2 {
            max-width: 300px;
        }
        .auto-style3 {
            max-width: 300px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
            max-width: 300px;
        }
        #form1{
              font-size: 20px;
              margin-left : 30px;
              max-width : 800px;
       }
         .tieude_form{
            font-size: 30px;
            padding : 20px;
        }
        .auto-style5 {
            max-width: 300px;
        }
        td{
            max-width : 400px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1" max-width="800px" >
             <tr>
                 <td colspan="2" class="tieude_form" ><b>THÔNG TIN SINH VIÊN</b> </td>
            </tr>
            
            <tr>
                <td class="auto-style2">Mã Sinh Viên </td>
                <td class="auto-style5">
                    <asp:Label ID="lblMaSV" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Họ Tên</td>
                <td class="auto-style5">
                    <asp:Label ID="lblHoTen" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Ngày Sinh</td>
                <td class="auto-style5">
                    <asp:Label ID="lblNgaySinh" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Giới Tính</td>
                <td class="auto-style4">
                    <asp:Label ID="lblGioiTinh" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Lớp</td>
                <td class="auto-style5">
                    <asp:Label ID="lblLop" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
           
            <tr>
                <td class="auto-style2">Điểm trung bình</td>
                <td class="auto-style5">
                    <asp:Label ID="lbldtb" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Ghi chú</td>
                <td class="auto-style5">
                    <asp:Label ID="lblGhiChu" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Student.aspx">&lt;&lt;Quay Lại</asp:LinkButton>
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
       
    </form>
    <p>
    <b class="tieude_form">Phan Trung Hiếu CQ57/41.01LT1 STT : 14</b>
</body>
</html>
