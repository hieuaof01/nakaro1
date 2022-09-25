using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace ASPQLSV
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["TrangThai"] = "IsLogout";
            //mo file doc ghi
            //Phan Trung Hiếu CQ57/41.01  STT14
            System.IO.StreamReader reader = new System.IO.StreamReader(Server.MapPath("\\SLTC.txt"));
            string s = reader.ReadLine();
            reader.Close();

            //tao bien new count dem so luong truy cap
            long newCount = long.Parse(s) + 1;
            Session["LoginCount"] = newCount;

            System.IO.StreamWriter writer = new System.IO.StreamWriter(Server.MapPath("\\SLTC.txt"));
            writer.Write(newCount.ToString());
            writer.Close();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}