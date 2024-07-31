using HygeRoyal_Booking.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace HygeRoyal_Booking.Pages
{
    public partial class ZenVillaRooms : System.Web.UI.Page
    {
        private readonly string connectionString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        private readonly string CONDITION_DATA = "Zen Villa";
        protected List<RoomModel> listroom = new List<RoomModel>();
        public List<RoomModel> listbooking = new List<RoomModel>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if ((bool)Session["IsSignIn"] == false)
            {
                detail_booking.Style["display"] = "none";
            }


            if (!IsPostBack)
            {
                LoadData();
                LoadDataBooking();
                CountBooking();
                HiddenButton();
            }
        }

        private void LoadData()
        {
            string query_select = "SELECT roomID,image, name, price, discount FROM Room WHERE belong = @belong";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query_select, connection))
                {
                    command.Parameters.AddWithValue("@belong", CONDITION_DATA);
                    try
                    {
                        connection.Open();
                        SqlDataReader reader = command.ExecuteReader();
                        while (reader.Read())
                        {
                            int ID = (int)reader["roomID"];
                            string image = reader["image"].ToString();
                            string name = reader["name"].ToString();
                            int price = Convert.ToInt32(reader["price"]);
                            string discount = reader["discount"].ToString();

                            listroom.Add(new RoomModel { ID = ID, ImageUrl = image, Name = name, Price = price, Discount = discount });
                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write($"<script>alert('An error occurred: {ex.Message}');</script>");
                    }
                }
            }
        }

        private void LoadDataBooking()
        {
            string query_select = "SELECT roomID,name, price, discount, quantity FROM RoomCartView WHERE email = @email";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command_select = new SqlCommand(query_select, connection))
                {
                    command_select.Parameters.AddWithValue("@email", HttpContext.Current.Session["UserEmail"]);
                    try
                    {
                        connection.Open();
                        SqlDataReader reader_select = command_select.ExecuteReader();
                        while (reader_select.Read())
                        {
                            int id = Convert.ToInt32(reader_select["roomID"]);
                            string name = reader_select["name"].ToString();
                            int price = Convert.ToInt32(reader_select["price"]);
                            string discount = reader_select["discount"].ToString();
                            int quantity = Convert.ToInt32(reader_select["quantity"]);

                            listbooking.Add(new RoomModel { ID = id, Name = name, Price = price, Discount = discount, Quantity = quantity });
                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write($"<script>alert('An error occurred: {ex.Message}');</script>");
                    }
                }
            }
        }

        private void CountBooking()
        {
            string query_count = "SELECT COUNT(*) FROM RoomCartView WHERE email = @email";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command_count = new SqlCommand(query_count, connection))
                {
                    command_count.Parameters.AddWithValue("@email", Session["UserEmail"]);
                    try
                    {
                        connection.Open();
                        int hasbooking = (int)command_count.ExecuteScalar();

                        if (hasbooking <= 0)
                        {
                            detail_booking.Style["display"] = "none";
                        }
                        else
                        {
                            detail_booking.Style["display"] = "block";
                        }
                    }

                    catch (Exception ex)
                    {
                        Response.Write($"<script>alert('An error occurred: {ex.Message}');</script>");
                    }
                }

            }
        }

        private void HiddenButton()
        {
            var btnAddRooms = listbooking.Select(b => b.ID).ToList();

            foreach (var roomID in btnAddRooms)
            {
                string controlId = $"add_room_{roomID}";

                var button = Page.FindControl(controlId) as HtmlButton;

                if (button != null)
                {
                    button.Style["display"] = "none";
                }
            }
        }

        [WebMethod]
        public static string InsertRoom(int ID, string Email)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            try
            {
                string query_insert = "INSERT INTO Room_Cart (roomID, email, quantity) VALUES (@roomID, @email, @quantity)";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command_insert = new SqlCommand(query_insert, connection))
                    {
                        command_insert.Parameters.AddWithValue("@roomID", ID);
                        command_insert.Parameters.AddWithValue("@email", Email);
                        command_insert.Parameters.AddWithValue("@quantity", 1);

                        connection.Open();
                        command_insert.ExecuteNonQuery();
                    }
                }

                return "Success";
            }
            catch (Exception ex)
            {
                return "An error:" + ex.Message;
            }
        }

        [WebMethod]
        public static string DeleteRoom(int ID, string email)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
                string query_delete = "DELETE FROM Room_Cart WHERE roomID = @roomID AND email = @email";
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command_delete = new SqlCommand(query_delete, connection))
                    {
                        command_delete.Parameters.AddWithValue("@roomID", ID);
                        command_delete.Parameters.AddWithValue("@email", email);

                        connection.Open();
                        command_delete.ExecuteNonQuery();
                    }
                }

                return "Success";
            }
            catch (Exception ex)
            {
                return "An error:" + ex.Message;
            }

        }
    }
}