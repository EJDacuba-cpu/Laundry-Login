using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Laundry_Login
{
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_btn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=LoginData;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into dbo.admin values(@studentID,@lastname,@age,@firstname)", con);
            cmd.Parameters.AddWithValue("@studentID", int.Parse(student_id.Text));
            cmd.Parameters.AddWithValue("@lastname", last_name.Text);
            cmd.Parameters.AddWithValue("@age", double.Parse(age.Text));
            cmd.Parameters.AddWithValue("@firstname", first_name.Text);

            con.Close();
            message_text.Text = "paminta ka na";
        }

        protected void Update_btn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=LoginData;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            con.Open();
            SqlCommand cmd = new SqlCommand("Update dbo.admin set where studentID=@studentID, lastname=@lastname, age=@age, firstname=@firstname where ",con);
            cmd.Parameters.AddWithValue("@studentID", int.Parse(student_id.Text));
            cmd.Parameters.AddWithValue("@lastname", last_name.Text);
            cmd.Parameters.AddWithValue("@age", double.Parse(age.Text));
            cmd.Parameters.AddWithValue("@firstname", first_name.Text);

            con.Close();
            message_text.Text = "Updated na bhie";
        }

        protected void clubmember_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void refresh_btn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=LoginData;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            con.Open();

            SqlCommand cmd = new SqlCommand("Select *from dbo.admin", con);

            SqlDataAdapter adapter = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            adapter.Fill(dt);

            GridView1.DataSource = dt;
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}