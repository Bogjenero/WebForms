using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        private readonly SqlConnection _connection = new SqlConnection(ConfigurationManager.ConnectionStrings["AdoNetConnectionString"].ToString());
        private SqlCommand _command;
        private SqlDataReader _dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            _connection.Open();
            _command = new SqlCommand("SELECT * FROM Student WHERE Password=@Lozinka and Username = @Korisnik", _connection);
            _command.Parameters.AddWithValue("@Lozinka", TextBox3.Text);
            _command.Parameters.AddWithValue("@Korisnik", TextBox1.Text);
            _dr = _command.ExecuteReader();
            _dr.Close();
            _connection.Close();

            int rowCount = Convert.ToInt32(_command.ExecuteScalar());
            if(rowCount > 0)
            {
                Response.Redirect("Shop.aspx");
            }
        }

    }
}