using HygeRoyal_Booking.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HygeRoyal_Booking.Pages
{
    public partial class Room_Admin : System.Web.UI.Page
    {
        private readonly string connectionString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

        protected List<RoomModel> listroom = new List<RoomModel>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }

        private void LoadData()
        {
            string query_select = "SELECT image, name, price, discount, belong FROM Room";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command_select = new SqlCommand(query_select, connection))
                {
                    try
                    {
                        connection.Open();
                        SqlDataReader reader = command_select.ExecuteReader();
                        while (reader.Read())
                        {
                            string image = reader["image"].ToString();
                            string name = reader["name"].ToString();
                            int price = Convert.ToInt32(reader["price"]);
                            string discount = reader["discount"].ToString();
                            string belong = reader["belong"].ToString();

                            listroom.Add(new RoomModel { ImageUrl = image, Name = name, Price = price, Discount = discount, Belong = belong });
                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write($"<script>alert('An error occurred: {ex.Message}');</script>");
                    }
                }
            }
        }

        protected void AddRoom(object sender, EventArgs args)
        {
            string name = nameRoom.Value.Trim();
            string price = priceRoom.Value.Trim();
            string discount = discountRoom.Value.Trim();
            string roombelong = roomBelong.SelectedValue;

            if (imageRoom.HasFile && !string.IsNullOrEmpty(name) && !string.IsNullOrEmpty(price) && !string.IsNullOrEmpty(discount))
            {
                int priceInt = int.Parse(price);
                var fileName = Path.GetFileName(imageRoom.PostedFile.FileName);
                var filePath = Path.Combine(Server.MapPath("~/ImageRooms"), fileName);
                imageRoom.SaveAs(filePath);

                string query_insert = "INSERT INTO Room (image, name, price, discount, belong) VALUES (@image, @name, @price, @discount, @belong)";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command_insert = new SqlCommand(query_insert, connection))
                    {
                        command_insert.Parameters.AddWithValue("@image", fileName);
                        command_insert.Parameters.AddWithValue("@name", name);
                        command_insert.Parameters.AddWithValue("@price", priceInt);
                        command_insert.Parameters.AddWithValue("@discount", discount);
                        command_insert.Parameters.AddWithValue("@belong", roombelong);

                        try
                        {
                            connection.Open();
                            command_insert.ExecuteNonQuery();
                            nameRoom.Value = "";
                            priceRoom.Value = "";
                            discountRoom.Value = "";

                            Response.Write("<script>alert('Room added successfully');</script>");
                            Server.Transfer(Request.Url.AbsolutePath);
                        }

                        catch (Exception ex)
                        {
                            Response.Write($"<script>alert('An error occurred: {ex.Message}');</script>");
                        }
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