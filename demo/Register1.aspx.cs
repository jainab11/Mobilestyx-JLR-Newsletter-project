using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace demo
{
    public partial class Register1 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["myconstr"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                string name = TxtName.Text.Trim();
                string email = TxtEmail.Text.Trim();
                string password = TxtPassword.Text.Trim();

                //Generate a salt
                string salt = GenerateSalt();

                // Hash the password with the salt
                string hashedPassword = HashString(password + salt);

                // SQL query to insert user details (name, email, password, salt) into the database
                string query = "INSERT INTO REGISTER (NAME, EMAIL, PASSWORD,SALT) VALUES(@NAME, @EMAIL, @PASSWORD,@SALT)";

                using (SqlConnection con = new SqlConnection(cs))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@NAME", name);
                    cmd.Parameters.AddWithValue("@EMAIL", email);
                    cmd.Parameters.AddWithValue("@PASSWORD", hashedPassword);
                    cmd.Parameters.AddWithValue("@SALT", salt);
                    cmd.ExecuteNonQuery();
                    con.Close();
                }

                // Redirect to Login page after successful registration
                Response.Redirect("Login1.aspx");
            }
            catch (Exception ex)
            {
                // Display the error message
                LblError.Text = "An error occurred: " + ex.Message;
                LblError.Style["display"] = "block";
            }
        }




        private string GenerateSalt()
        {
            return Guid.NewGuid().ToString();
        }

        public static string HashString(string input)
        {
            StringBuilder sb = new StringBuilder();
            foreach (byte b in GetHash(input))
            {
                sb.Append(b.ToString("X3"));
            }
            return sb.ToString();
        }

        public static byte[] GetHash(string input)
        {
            using (HashAlgorithm algorithm = SHA256.Create())
            {
                return algorithm.ComputeHash(Encoding.UTF8.GetBytes(input));
            }
        }
    }

}