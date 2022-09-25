﻿using ASPQLSV.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPQLSV
{
    public partial class StudentAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)//lan dau dc goi ve 
            {
                LoadLop();
            }
        }
        private void LoadLop()
        {
            RunData run = new RunData();
            string strSQL = "SELECT *FROM Lop";
            ddlLop.DataSource = run.GetData(strSQL);
            ddlLop.DataTextField = "tenlop";
            ddlLop.DataValueField = "malop";
            ddlLop.DataBind();
        }

        protected void btnLuu_Click(object sender, EventArgs e)
        {
            string _masv =txtMaSV.Text.Trim();
            string _hoten = txtHoten.Text;
            string _lop = ddlLop.SelectedValue;
            string _ngaysinh = txtNgaysinh.Text;
            int _gioitinh = int.Parse(ddlGioiTinh.SelectedValue);
            float _dtb = float.Parse(txtdtb.Text);
            string _ghichu = txtGhiChu.Text;

            string strSQL = "INSERT INTO SinhVienASP (masv , hoten,lop,ngaysinh,gioitinh,dtb,ghichu) " +
                "VALUES (N'"+_masv+"',N'"+_hoten+"',N'"+_lop+"','"+_ngaysinh+"',"+
                _gioitinh+","+_dtb+",N'"+_ghichu+"')";
            RunData run = new RunData();
            run.Execute(strSQL);

            Response.Redirect("Student.aspx");
            
        }
    }
}