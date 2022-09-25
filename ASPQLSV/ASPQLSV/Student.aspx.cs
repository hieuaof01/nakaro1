using System;
using System.Web.UI.WebControls;
using ASPQLSV.Database;

namespace ASPQLSV
{
    public partial class Student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Trangthai"].ToString() == "IsLogout")
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                lblLoginCount.Text = Session["LoginCount"].ToString();
                lblTaiKhoan.Text = Session["TenDN"].ToString();

                if (!IsPostBack)//neu mo trang lan dau thuc hien load student
                {
                    LoadStudents();
                }
            }
        }

        private void LoadStudents()
        {
            RunData run = new RunData();
            string strSQL = "SELECT *FROM SinhVienASP";
            grvSinhVien.DataSource = run.GetData(strSQL);
            grvSinhVien.DataBind();
        }
        public string TranslateGT(object obj)
        {
            bool gt = bool.Parse(obj.ToString());
            return gt ? "Nam" : "Nu";
        }

        protected void grvSinhVien_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            grvSinhVien.EditIndex = e.NewEditIndex;
            LoadStudents();
        }

        protected void grvSinhVien_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            grvSinhVien.EditIndex = -1;
            LoadStudents();//nut huy sua 
        }

        protected void grvSinhVien_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {
            string _masv = grvSinhVien.DataKeys[e.RowIndex].Value.ToString().Trim();
            string _hoten = ((TextBox)grvSinhVien.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string _lop = ((TextBox)grvSinhVien.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            float _dtb = float.Parse(((TextBox)grvSinhVien.Rows[e.RowIndex].Cells[4].Controls[0]).Text);
            string _gioitinh = ((DropDownList)grvSinhVien.Rows[e.RowIndex].Cells[2].FindControl("ddlGioiTinh")).SelectedValue;

            string strSQL = "Update SinhVienASP set hoten = N'"+_hoten+"',lop = N'"+_lop+"',dtb="+_dtb+",gioitinh="+_gioitinh+""
                +"WHERE masv=N'"+_masv+"'";
            RunData run = new RunData();
            run.Execute(strSQL);//thuc thi cau len strSQL
            grvSinhVien.EditIndex = -1;//de thoat khoi viec sua 
            LoadStudents();//load lai cac ban sinh vien 
        }

        protected void grvSinhVien_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //xoas sinh vien
            string _masv = grvSinhVien.DataKeys[e.RowIndex].Value.ToString().Trim();
            string strSQL = "DELETE FROM SinhVienASP Where masv = N'"+ _masv + "'";
            RunData run = new RunData();
            run.Execute(strSQL);
            grvSinhVien.EditIndex = -1;
            LoadStudents();
        }

       protected void grvSinhVien_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && grvSinhVien.EditIndex == -1)
            {
                ((LinkButton)e.Row.Cells[5].Controls[2]).OnClientClick =
                     "return confirm('Bạn có chắc chắn muôn xóa không ?')";
            }
        }

        protected void grvSinhVien_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            string _masv = grvSinhVien.DataKeys[e.NewSelectedIndex].Value.ToString().Trim();
            Response.Redirect("StudentDetail.aspx?masv=" + _masv);//chuyen trang //neu bam nut chon
        }

        protected void grvSinhVien_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}