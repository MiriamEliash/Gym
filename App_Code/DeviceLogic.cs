using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Gym.App_Code
{
    public class DeviceLogic
    {
        DAL dal = new DAL();
        public DataSet getAllDevice()
        {
            string sql = "SELECT * FROM Devices";
            return dal.excuteQuery(sql);
        }
    }
}