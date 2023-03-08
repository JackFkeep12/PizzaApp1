using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PizzaApp
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignInBtn_Click(object sender, EventArgs e)
        {
            if (UsernameTxt.Text =="Admin" && PasswordTxt.Text == "manager456123")
            {
                Response.Redirect("ManagerPage.aspx");
              
            };
          
        }
    }
}