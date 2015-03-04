using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using indusedu.dataaccesslayer;

/// <summary>
/// Summary description for AdminLogin
/// </summary>
namespace indusedu.Admin
{
    public class AdminLogin
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.AppSettings["induseduconnectionstring"]);
        DataAccess das = new DataAccess();
        DataSet ds;
        SqlCommand cmd;

        public AdminLogin()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        public DataSet Login(string UserID, string Password)
        {
           // connection.Open();
            SqlParameter[] parm = new SqlParameter[2];
            parm[0] = new SqlParameter("@UserID", UserID);
            parm[1] = new SqlParameter("@Password", Password);
            ds = das.ExecuteSQL("indusEdi_AdLogin", parm);
            //SqlCommand cmd = new SqlCommand("", connection);
            
            return ds;

        }
       public string GetIPAddress()
   
       {
           try
           {
               string ipAdd;
               HttpRequest currentRequest = HttpContext.Current.Request;
               ipAdd = currentRequest.ServerVariables["HTTP_X_FORWARDED_FOR"];

               if (ipAdd == null || ipAdd.ToLower() == "unknown")
                   ipAdd = currentRequest.ServerVariables["REMOTE_ADDR"];

               return ipAdd;
           }
           catch (Exception ex)
           {  
               throw ex;
           }
       }

       public DataSet Ip(string date, string ip)
       {
           string qry = "Select top(1)* from ipadd order by logdate desc";
           ds=das.ExcuteQry(qry);
           return ds;
       }

       public DataSet InsertIp(string date , string ip,string UserID)
       {
           SqlParameter[] parm = new SqlParameter[3];
           parm[0] = new SqlParameter("@UserName", UserID);
           parm[1] = new SqlParameter("@logdate", date);
           parm[2] = new SqlParameter("@ipaddress", ip);
           
           ds = das.ExecuteSQL("induEdu_ipadd", parm);
           return ds;

       }
    }
}