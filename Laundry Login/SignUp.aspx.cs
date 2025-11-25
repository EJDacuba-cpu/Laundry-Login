using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Laundry_Login
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signup_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();
            string contact = txtContact.Text.Trim();


            string connections = ConfigurationManager.ConnectionStrings["userdatabase"].ConnectionString;


            using (SqlConnection con = new SqlConnection(connections))
            {
                string query = "INSERT INTO Users (Username, Email, Password, ContactNumber) VALUES (@Username, @Email, @Password, @Contact)";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Username", username);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Password", password);
                    cmd.Parameters.AddWithValue("@Contact", contact);
         
                }
            }
        }
    }
}