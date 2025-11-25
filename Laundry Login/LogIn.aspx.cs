using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.EnterpriseServices;


namespace Laundry_Login
{
    public partial class LogIn : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void signin_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(username.Text) || string.IsNullOrEmpty(password.Text))
            {
                msg.Text = "Please fill out both username and password!";
                msg.Visible = true;

                ScriptManager.RegisterStartupScript(this, GetType(), "msg", "showErrorMessage();", true);
                return;
            }

            if (username.Text != "admin" || password.Text != "1234")
            {
                msg.Text = "Invalid username or password!";
                msg.Visible = true;

                ScriptManager.RegisterStartupScript(this, GetType(), "msg", "showErrorMessage();", true);
                return;
            }

            Response.Redirect("Profile.aspx");
        }
    }
 }




