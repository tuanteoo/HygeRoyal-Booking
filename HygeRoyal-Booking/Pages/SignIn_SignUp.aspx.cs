using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HygeRoyal_Booking.Pages
{
    public partial class SignIn_SignUp : System.Web.UI.Page
    {
        private readonly string connectionString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSignUp_Click(object sender, EventArgs e)
        {
            string username = upname.Value.Trim();
            string password = uppassword.Value.Trim();
            string email = upemail.Value.Trim();

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query_count = "SELECT COUNT(*) FROM Accounts WHERE email = @email";
                SqlCommand cmd = new SqlCommand(query_count, conn);
                cmd.Parameters.AddWithValue("@email", email);

                try
                {
                    conn.Open();
                    int count = (int)cmd.ExecuteScalar();

                    if (count > 0)
                    {
                        string script = "<script> alert('Email này đã được đăng ký cho tài khoản khác !'); </script>";
                        Response.Write(script);
                    }
                    else if (username != null && password.Length >= 8 && password.Length <= 16 && email != null)
                    {
                        string query_insert = "INSERT INTO Accounts (email,password,username) VALUES (@email,@password,@username)";
                        SqlCommand cmd_insert = new SqlCommand(query_insert, conn);
                        cmd_insert.Parameters.AddWithValue("@email", email);
                        cmd_insert.Parameters.AddWithValue("@password", password);
                        cmd_insert.Parameters.AddWithValue("@username", username);

                        int check_insert = cmd_insert.ExecuteNonQuery();

                        if (check_insert > 0)
                        {
                            upname.Value = "";
                            upemail.Value = "";
                            uppassword.Value = "";

                            string script = "<script> alert('Tạo tài khoản thành công!'); </script>";
                            Response.Write(script);
                        }
                        else
                        {
                            string script = "<script> alert('Tạo tài khoản thất bại!'); </script>";
                            Response.Write(script);
                        }
                    }
                }

                catch (Exception ex)
                {
                    Response.Write($"<script>alert('An error occurred: {ex.Message}');</script>");
                }
            }
        }

        protected void BtnSignIn_Click(object sender, EventArgs e)
        {
            string password = inpassword.Value.Trim();
            string email = inemail.Value.Trim();

            if (password.Length >= 8 && password.Length <= 16 && !string.IsNullOrEmpty(email))
            {

                using (SqlConnection sqlConnection = new SqlConnection(connectionString))
                {
                    string query = "SELECT COUNT(*) FROM Accounts WHERE email = @email AND password = @password";
                    SqlCommand sqlCommand = new SqlCommand(query, sqlConnection);
                    sqlCommand.Parameters.AddWithValue("@email", email);
                    sqlCommand.Parameters.AddWithValue("@password", password);

                    string query2 = "SELECT username FROM Accounts WHERE email = @email";
                    SqlCommand command = new SqlCommand(query2, sqlConnection);
                    command.Parameters.AddWithValue("@email", inemail.Value.Trim());

                    try
                    {
                        sqlConnection.Open();
                        int count = (int)sqlCommand.ExecuteScalar();

                        if (count > 0)
                        {
                            Session["UserEmail"] = email;
                            Session["Password"] = password;
                            Session["IsSignIn"] = true;

                            Session["UserName"] = command.ExecuteScalar().ToString();

                            Response.Redirect("Home.aspx");
                        }
                        else
                        {
                            string script = "<script> alert('Tài khoản không tồn tại. Hoặc thông tin tài khoản không chính xác'); </script>";
                            Response.Write(script);
                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write($"<script>alert('An error occurred: {ex.Message}');</script>");
                    }
                }
            }

            else
            {
                Response.Write("<script>alert('Please enter complete data');</script>");
            }
        }
    }
}