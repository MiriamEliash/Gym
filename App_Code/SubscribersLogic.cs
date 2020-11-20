using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Gym.App_Code
{

     DAL dal = new DAL();
    public class SubscribersLogic
    {
        public bool checkExist (string ID, string pass)
        {
            string sql = "SELECT * FROM Subscribers WHERE ID='" + ID + "' and Password='" + pass + "'"; ;
            DataSet ds = dal.excuteQuery(sql);
            if (ds.Tables[0].Rows.Count < 0)
                return false;
            return true;
        }
        public void addNewSubscriber(string ID,string FirstName, string LastName, string PhoneNumber, string Weight, string Pass2)
        {
            string sql = String.Format("INSERT INTO Users (ID,First name,Last name,Phone number,Weight,Password) VALUES ('{0}', '{1}','{2}','{3}','{4}','{5}','{6}')", ID, FirstName, LastName, PhoneNumber, Weight, Pass2);
           // dal.excuteQuery(sql);
        }
    }

    }
}