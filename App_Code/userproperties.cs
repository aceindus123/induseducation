using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using indusedu.dataaccesslayer;
/// <summary>
/// Summary description for userproperties
/// </summary>
namespace indedu.userproperties
{
    public class userproperties
    {
        public userproperties()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        private string userid;

        public string Userid
        {
            get { return userid; }
            set { userid = value; }
        }
        private string password;

        public string Password
        {
            get { return password; }
            set { password = value; }
        }
        private string firstname;

        public string Firstname
        {
            get { return firstname; }
            set { firstname = value; }
        }
        private string lastname;

        public string Lastname
        {
            get { return lastname; }
            set { lastname = value; }
        }
        private string designation;

        public string Designation
        {
            get { return designation; }
            set { designation = value; }
        }
        private string address;

        public string Address
        {
            get { return address; }
            set { address = value; }
        }
        private string phnono;

        public string Phnono
        {
            get { return phnono; }
            set { phnono = value; }
        }
        private string emailid;

        public string Emailid
        {
            get { return emailid; }
            set { emailid = value; }
        }
        private int status;

        public int Status
        {
            get { return status; }
            set { status = value; }
        }
        private string postdate;

        public string Postdate
        {
            get { return postdate; }
            set { postdate = value; }
        }
        private string country;

        public string Country
        {
            get { return country; }
            set { country = value; }
        }
        private string state;

        public string State
        {
            get { return state; }
            set { state = value; }
        }
        private string city;

        public string City
        {
            get { return city; }
            set { city = value; }
        }
        private string mobileno;
        public string Mobileno
        {
            get { return mobileno; }
            set { mobileno = value; }

        }
        private string cfmpwd;
        public string Cfmpwd
        {
            get { return cfmpwd; }
            set { cfmpwd = value; }
        }

       





    }
}