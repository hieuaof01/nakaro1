<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentAdd.aspx.cs" Inherits="ASPQLSV.StudentAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Phan Trung Hiếu CQ57/41.01 STT : 14</title>

    <style type="text/css">
         html,body{
                 background-color : #f0f2f5;
       }
        .auto-style1 {
            height: 25px;
        }
        .auto-style3 {
            max-width: 178px;
        }
        .auto-style4 {
            height: 25px;
            max-width: 200px;
        }
        .auto-style5 {
            max-width: 178px;
            max-height : 200px;
        }
        .auto-style6 {
            height: 25px;
            max-width: 178px;
        }
        *{
            padding: 0;
            margin : 0;
            box-sizing:border-box;
       }
        #form1{
              font-size: 20px;
              max-width : 800px;
              margin : 50px 50px;
       }
        .tieude_form{
            font-size: 30px;
            padding : 20px;
        }
        input{
            padding-top : 10px;
            font-size: 16px;
            height : 28px;
        }
        select{
            font-size: 16px;
            height : 28px;
        }
        
        #btnLuu{
            background: #009688;
            color: #fff;
            font-size: 15px;
            text-transform: uppercase;
            padding: 10px 15px 20px 15px;
            cursor: pointer;
            border : none;
            text-align : center;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
             <table class="auto-style1">
             <tr>
                <td colspan="2" class="tieude_form"><b>THÊM MỚI SINH VIÊN</b> </td>
            </tr>
            
            <tr>
                <td class="auto-style6">Mã Sinh Viên </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtMaSV" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Họ Tên</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtHoten" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Ngày Sinh</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtNgaysinh" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Giới Tính</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="ddlGioiTinh" runat="server">
                        <asp:ListItem Value="1">Nam</asp:ListItem>
                        <asp:ListItem Value="0">Nữ</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Lớp</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="ddlLop" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
           
            <tr>
                <td class="auto-style6">Điểm trung bình</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtdtb" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Ghi chú</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtGhiChu" runat="server" Width="381px" Height="28px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Student.aspx">&lt;&lt;Quay Lại</asp:LinkButton>
                </td>
                <td class="auto-style56">
                    <asp:Button ID="btnLuu" runat="server" OnClick="btnLuu_Click" Text="Lưu" />
                </td>
            </tr>
        </table>
        </div>
    </form>
    <b>
        <b class="tieude_form">Phan Trung Hiếu CQ57/41.01LT1 STT : 14</b>
</body>
</html>
