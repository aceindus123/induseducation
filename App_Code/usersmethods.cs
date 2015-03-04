using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using indusedu.dataaccesslayer;
using indedu.userproperties;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// Summary description for usersmethods
/// </summary>
namespace indedu.usermethods
{
     
    public class usersmethods
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.AppSettings["induseduconnectionstring"]);
        DataAccess das = new DataAccess();
        DataSet ds;
        SqlCommand cmd;
        SqlTransaction myTrans;
        int result;
        string type="";
        public usersmethods()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    
 
        public bool insertnewuser(string Firstname, string Lastname, string Designation, string Country, string State, 
            string City, string Userid, string Password, string Emailid, string Phnono, string Cfmpwd, string Address, string Mobileno, 
            string Postdate, int Status)
        {
            type="Insertadminusers";
            connection.Open();
            myTrans = connection.BeginTransaction();
            SqlParameter[] arParms = new SqlParameter[15];
            arParms[0] = new SqlParameter("@Type", SqlDbType.NVarChar);
            arParms[0].Value = type;
            arParms[1]=new SqlParameter("@Userid",SqlDbType.NVarChar);
            arParms[1].Value=Userid;
            arParms[2]=new SqlParameter("@Password",SqlDbType.NVarChar);
            arParms[2].Value=Password;
            arParms[3]=new SqlParameter("@FName",SqlDbType.NVarChar);
            arParms[3].Value=Firstname;
            arParms[4]=new SqlParameter("@LName",SqlDbType.NVarChar);
            arParms[4].Value=Lastname;
            arParms[5]=new SqlParameter("@Designation",SqlDbType.NVarChar);
            arParms[5].Value=Designation;
            arParms[6]=new SqlParameter("@address",SqlDbType.NVarChar);
            arParms[6].Value=Address;
            arParms[7]=new SqlParameter("@Phno",SqlDbType.NVarChar);
            arParms[7].Value=Phnono;
            arParms[8]=new SqlParameter("@emailid",SqlDbType.NVarChar);
            arParms[8].Value=Emailid;
            arParms[9]=new SqlParameter("@status",SqlDbType.Int);
            arParms[9].Value=Status;
            arParms[10]=new SqlParameter("@posteddate",SqlDbType.NVarChar);
            arParms[10].Value=Postdate;
            arParms[11]=new SqlParameter("@Country",SqlDbType.NVarChar);
            arParms[11].Value=Country;
            arParms[12]=new SqlParameter("@State",SqlDbType.NVarChar);
            arParms[12].Value=State;
            arParms[13]=new SqlParameter("@City",SqlDbType.NVarChar);
            arParms[13].Value=City;
            result = das.ExecuteNonQuery("indedu_adminusersproc", arParms);
            connection.Close();
            return true;
        }
        public DataSet binduserslist()
        {
            connection.Open();
            myTrans = connection.BeginTransaction();
            ds = new DataSet();
            string res = "bindgrid";
            SqlParameter[] parm = new SqlParameter[1];
            parm[0] = new SqlParameter("@type", res);
            ds = das.ExecuteSQL("indedu_selectprocedures", parm);
            connection.Close();
            return ds;

        }
    }
}