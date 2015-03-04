using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using indusedu.dataaccesslayer;

/// <summary>
/// Summary description for exceptions
/// </summary>
namespace indusedu.exceptionsmethod
{
    public class exceptions
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.AppSettings["induseduconnectionstring"]);
        DataAccess das = new DataAccess();
        SqlTransaction myTrans;
        DataSet ds;
        int id;

        
        public exceptions()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        public void insert_exception(Exception ex, string excep_page)
        {

            connection.Open();
            myTrans = connection.BeginTransaction();
            ds = new DataSet();
            
            string excep1 = ex.StackTrace.ToString();
            string line = excep1.Substring(excep1.LastIndexOf("line"), (excep1.Length - excep1.LastIndexOf("line")));
            string exception_msg = ex.Message;
            string excep_date = System.DateTime.Now.ToString();
            string excep_status = "0";

            string type = "insert";

            SqlParameter[] parm = new SqlParameter[7];
            parm[0] = new SqlParameter("@Excep_desc", exception_msg);
            parm[1] = new SqlParameter("@Excep_postdate", excep_date);
            parm[2] = new SqlParameter("@Excep_status", excep_status);
            parm[3] = new SqlParameter("@Excep_page", excep_page);
            parm[4] = new SqlParameter("@type", type);
            parm[5] = new SqlParameter("@id", id);
            parm[6] = new SqlParameter("@Line_No", line);
           
            int res = das.ExecuteNonQuery("indEdu_exceptions", parm);
            connection.Close();
            
        }

        public DataSet exc_bind(string type)
        {
            string desc = "";
            string  dat = "";
            string line = "";
            string excpage = "";
            SqlParameter[] parm = new SqlParameter[7];
            parm[0] = new SqlParameter("@id", id);
            parm[1] = new SqlParameter("@Excep_desc", desc);
            parm[2] = new SqlParameter("@Excep_postdate", dat);
            parm[3] = new SqlParameter("@Excep_status", id);
            parm[4] = new SqlParameter("@Excep_page", excpage);
            parm[5] = new SqlParameter("@Line_No", line);
            parm[6] = new SqlParameter("@type", type);
            
            ds = das.ExecuteSelectDataSet("indEdu_exceptions", parm);
            return ds;
           
        }
    }
}