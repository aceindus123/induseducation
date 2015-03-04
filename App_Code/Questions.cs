using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using indusedu.dataaccesslayer;
using System.Configuration;

/// <summary>
/// Summary description for Questions
/// </summary>
namespace indsEdu_questions
{
public class Questions
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["induseduconnectionstring"]);
    DataAccess das = new DataAccess();
    DataSet ds=new DataSet();
    
    public Questions()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public bool insertquestions(string name, string Subject, string SbjectCategory, string Questiondescrpition, string Option1, string Option2, string Option3, string Option4, string CorrectAnswer, string Explanation, string Status,string PosteDate)
    {
       // SqlDataAdapter da = new SqlDataAdapter("insert into indsEdu_AddQuestions1(Class,Subject,SbjectCategory,Questiondescrpition,Option1,Option2,Option3,Option4,CorrectAnswer,Explanation,Status)values('" + name + "','" + Subject + "','" + SbjectCategory + "','" + Questiondescrpition + "','" + Option1 + "','" + Option2 + "','" + Option3 + "','" + Option4 + "','" + CorrectAnswer + "','" + Explanation + "','" + Status + "')", con);
       // DataSet ds1 = new DataSet();
       // da.Fill(ds1);
       // //if (ds1.Tables[0].Rows.Count > 0)
       // //{
       //     return true;
       // //}
       // //else
       // //{
       //    // return false;
       //// }
        
        SqlParameter[] parm = new SqlParameter[12];
        parm[0] = new SqlParameter("@Class", name);
        parm[1] = new SqlParameter("@Subject", Subject);
        parm[2] = new SqlParameter("@SbjectCategory", SbjectCategory);
        parm[3] = new SqlParameter("@Questiondescrpition", Questiondescrpition);
        parm[4] = new SqlParameter("@Option1", Option1);
        parm[5] = new SqlParameter("@Option2", Option2);
        parm[6] = new SqlParameter("@Option3", Option3);
        parm[7] = new SqlParameter("@Option4", Option4);
        parm[8] = new SqlParameter("@CorrectAnswer", CorrectAnswer);
        parm[9] = new SqlParameter("@Explanation", Explanation);
        parm[10] = new SqlParameter("@Status", Status);
        parm[11] = new SqlParameter("@PostedDate", PosteDate);
        int t = das.ExecuteNonQuery("indsEdu_Add1", parm);
        if (t == 1)
        {
            return true;
        }
        else
        {
            return false;
        }
       
    }
    public bool fileuplodquestions(string Option1, string Option2, string Option3, string Option4, string CorrectAnswer,string Qid)
    {
        SqlParameter[] parm = new SqlParameter[6];
       
        parm[0] = new SqlParameter("@Option1", Option1);
        parm[1] = new SqlParameter("@Option2", Option2);
        parm[2] = new SqlParameter("@Option3", Option3);
        parm[3] = new SqlParameter("@Option4", Option4);
        parm[4] = new SqlParameter("@CorrectAnswer", CorrectAnswer);
        parm[5] = new SqlParameter("@Qid", Qid);
        int t = das.ExecuteNonQuery("indsEdu_Add2", parm);
        if (t == 1)
        {
            return true;
        }
        else
        {
            return false;
        }
        
    }
    public string reterive(string PostedDate)
    {
        string qry = "Select id,PostedDate from indsEdu_AddQuestions where PostedDate='"+PostedDate+"'";
        string t = das.ExecuteScalar(qry);
        return t;
    }
}
}