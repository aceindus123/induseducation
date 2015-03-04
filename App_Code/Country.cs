using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using indusedu.dataaccesslayer;


/// <summary>
/// Summary description for Country
/// </summary>
namespace indusedu.country
{
    public class Country
    {
        DataSet ds;
        SqlConnection connection = new SqlConnection(ConfigurationManager.AppSettings["induseduconnectionstring"]);
        DataAccess das = new DataAccess();
        string res = "";
        public Country()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        public DataSet getcountry()
        {
            string qry = "select * from Country order by Country_Name asc";
             ds = new DataSet();
            ds = das.ExcuteQry(qry);
            return ds;
        }
        public string  getcountryid(string countryname)
        {
            string qry = "select * from Country where Country_Name='"+countryname+"'";
            res = das.ExecuteSQLstr(qry);
            return res;
        }
        public DataSet getstates(string id)
        {
             ds = new DataSet();
            SqlCommand cmd = new SqlCommand("select * from state where Country_ID='" + id + "' ", connection);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            return ds;

        }
        public string getstatesid(string statename)
        {
            string qry = "select * from state where State_Name='" + statename + "'";
            res = das.ExecuteSQLstr(qry);
            return res;
        }

       public DataSet getcities(string  id)
        {
         ds = new  DataSet();
        SqlCommand cmd = new SqlCommand("select * from city where State_ID='" + id + "'", connection);
        SqlDataAdapter da = new  SqlDataAdapter(cmd);

        da.Fill(ds);

        return  ds;
        
       }
       public DataSet usertype()
       {

           string qry = "select * from indEdu_UserType";
           DataSet ds = new DataSet();
           ds = das.ExcuteQry(qry);
           return ds;
       }
       public DataSet Classname()
       {
           string qry = "select * from indEdu_Class";
               ds=das.ExcuteQry(qry);
           return ds;
       }
       public DataSet Subject()
       {
           string qry = "select * from indEdu_Subject" ;
           ds = das.ExcuteQry(qry);
           return ds;
       }
       public DataSet SubjectCategory(string classid)
       {
           string qry = "select * from indEdu_Subjectcategories where ClassID='" + classid + "' ";
           ds = das.ExcuteQry(qry);
           return ds;
       }
       public string classid(string classid)
        {
        string qry = "select SID from indEdu_Subject where SubjectName='" + classid + "'"; 
       // ds = das.ExcuteQry(qry);
        string x = das.ExecuteScalar(qry);
        return x;

    }
        
        
    }
}