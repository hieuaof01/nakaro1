<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="ASPQLSV.Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Phan Trung Hiếu CQ57/41.01 STT : 14</title>
     <style type="text/css">
       
       html,body{
            background-color : #f0f2f5;
       }
      *{
            padding: 0;
            margin : 0;
            box-sizing:border-box;
       }
       #form1{
              margin: 50px auto;
              font-size: 20px;
              margin-left :18%;
       }
       th{
           padding : 5px;
       }
       td{
           padding : 5px;
       }
       .auto-style1 {
        margin-right: 36px;
        }
       .footer{
           font-size : 28px;
           margin-left: 20%;
       }
       .tieude_form{
           margin : 0 0 20px 210px;
           font-size : 30px;
       }
       #grvSinhVien{
           margin-top : 20px;
       }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="tieude_form">
             <b>QUẢN LÍ SINH VIÊN</b>
        </div>
        Số lượt truy cập :&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblLoginCount" runat="server" Text="0"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;
        Tài khoản&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblTaiKhoan" runat="server" Text="Label"></asp:Label>
&nbsp;<asp:GridView ID="grvSinhVien" runat="server" AutoGenerateColumns="False" max-width="850px" DataKeyNames="masv" OnRowEditing="grvSinhVien_RowEditing" OnRowCancelingEdit="grvSinhVien_RowCancelingEdit" OnRowUpdating="grvSinhVien_RowUpdating" OnRowDataBound="grvSinhVien_RowDataBound" OnRowDeleting="grvSinhVien_RowDeleting" OnSelectedIndexChanging="grvSinhVien_SelectedIndexChanging" OnSelectedIndexChanged="grvSinhVien_SelectedIndexChanged" CssClass="auto-style1">
            <Columns>
                <asp:TemplateField HeaderText="Mã Sinh Viên">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("masv") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="hoten" HeaderText="Họ Tên" />
                <asp:TemplateField HeaderText="Giới Tính">
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddlGioiTinh" runat="server">
                            <asp:ListItem Value="1">Nam</asp:ListItem>
                            <asp:ListItem Value="0">Nữ</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# TranslateGT(Eval("gioitinh")) %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="lop" HeaderText="Lớp" />
                <asp:BoundField DataField="dtb" HeaderText="DTB" />
                <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" HeaderText="Chức Năng" InsertText="Thêm" NewText="Mới" SelectText="Chọn" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" ShowSelectButton="True" UpdateText="Cập Nhập" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:LinkButton ID="lbnThem" runat="server" PostBackUrl="~/StudentAdd.aspx">Thêm Mới</asp:LinkButton>
    </form>
    <p>
        <strong class="footer">Phan Trung Hiếu CQ57/41.01LT1 STT : 14</strong></p>
</body>
</html>
