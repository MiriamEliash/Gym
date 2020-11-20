using Gym.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gym
{
    public partial class Device : System.Web.UI.Page
    {
        DeviceLogic dl = new DeviceLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = dl.getAllDevice();
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}