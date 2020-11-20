using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gym
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       

        protected void Button2_Click1(object sender, EventArgs e)
        {
           SubscribersLogic ul = new SubscribersLogic();
            if (!(checkExist(texeIdNumber.Text, password.Text)))
                Label.Text = "id or passwod are wrong";
            else
               Label.Text = "you have successfully loggin";
        }
    }
}