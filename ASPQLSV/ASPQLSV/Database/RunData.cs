using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace ASPQLSV.Database
{
    public class RunData
    {
        public DataTable GetData(string strSQL)
        {
            string connStr;
            SqlConnection conn;
            SqlDataAdapter adapter;

            DataTable dt = new DataTable();

            //mo ket noi  Phan Trung Hiếu CQ57/41.01LT1 STT : 14
            connStr = @"Server=DESKTOP;Database=QLSVT;User Id=hieu123;Password=123456;";
            conn = new SqlConnection(connStr);
            conn.Open();
            //lay du lieu 
            adapter = new SqlDataAdapter(strSQL, connStr);
            adapter.Fill(dt);
            conn.Close();
            return dt;

        }

        public void Execute(string strSQL)
        {
            //ham thuc thi du lieu 
            string connStr;
            SqlConnection conn;
            SqlCommand command;

            DataTable dt = new DataTable();

            //mo ket noi 
            connStr = @"Server=DESKTOP;Database=QLSVT;User Id=hieu123;Password=123456;";
            conn = new SqlConnection(connStr);
            conn.Open();

            command = new SqlCommand(strSQL, conn);
            command.ExecuteNonQuery();
            conn.Close();
        }
    }
}