using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Registracija : System.Web.UI.Page
    {
        private readonly SqlConnection _connection = new SqlConnection(ConfigurationManager.ConnectionStrings["AdoNetConnectionString"].ToString());
        private SqlCommand _command;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            _connection.Open();
            _command = new SqlCommand("INSERT INTO Student(Ime, Prezime, GodinaUpisa)VALUES(@ime, @prezime, @godina)", _connection);
            _command.Parameters.AddWithValue("@Username", TextBox1.Text);
            _command.Parameters.AddWithValue("@Password", TextBox3.Text);
            _command.Parameters.AddWithValue("@FullName", TextBox2.Text);
            _command.ExecuteNonQuery(); // ništa ne vraća
            _connection.Close();
            Response.Redirect("Login.aspx");

        }

        protected void TextBox2_TextChanged()
        {

        }
    }
}