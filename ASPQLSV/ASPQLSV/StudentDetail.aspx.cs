using ASPQLSV.Database;
using System;
using System.Data;


namespace ASPQLSV
{
    public partial class StudentDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string _masv = Request.QueryString["masv"].ToString().Trim();//co ma moi thuc thi cau lenh 
            string strSQl = "SELECT masv,hoten,lop,gioitinh,ngaysinh,dtb,ghichu " +
                           "FROM SinhVienASP WHERE masv=N'" + _masv + "'";
            RunData run = new RunData();//ep QLSV
           DataTable dt= run.GetData(strSQl);
            //sau lay ve gan cca gia tri 
            lblMaSV.Text = _masv;
            lblHoTen.Text = dt.Rows[0][1].ToString();
            lblLop.Text = dt.Rows[0][2].ToString();
            bool gt =bool.Parse(dt.Rows[0][3].ToString());//chuyen doi kieu so 
            lblGioiTinh.Text = gt==true ?"Nam":"Nu";
            DateTime ns = DateTime.Parse(dt.Rows[0][4].ToString());
            lblNgaySinh.Text = ns.ToShortDateString();
            lbldtb.Text = dt.Rows[0][5].ToString();
            lblGhiChu.Text = dt.Rows[0][6].ToString();
        }
    }
}