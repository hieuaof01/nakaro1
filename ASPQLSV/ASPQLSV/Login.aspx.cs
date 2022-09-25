using ASPQLSV.Database;
using System;
using System.Data;

namespace ASPQLSV
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            if (CheckLogin(txtTenDN.Text.Trim(), txtMatKhau.Text.Trim()))
            {
                //gan lai bien trang thai
                Session["TrangThai"] = "IsLogin";
                Session["TenDN"] = txtTenDN.Text.Trim();

                Response.Redirect("Student.aspx");//dieu huong ve trang aspx
            }
            else
            {
                Response.Write("<SCRIPT language=\"Javascript\"> alert(\"Tên đang nhập hoặc mật khẩu không đúng\")</SCRIPT>");
                txtTenDN.Text = string.Empty;
                txtMatKhau.Text = string.Empty;
                txtTenDN.Focus();
            }
        }
        private bool CheckLogin(string username , string passwork)
        {
            RunData run = new RunData();
            DataTable dt = new DataTable();

            string strSQL = "SELECT* FROM NguoiDung WHERE TenDN = N'"+username+"' AND MatKhau=N'"+passwork+"'";
            //lay ket qua ve 
            dt = run.GetData(strSQL);
            if (dt.Rows.Count > 0)//tontai nguoi dang nhap do{
            {
                return true;
            }
             return false;
        }
    }
}