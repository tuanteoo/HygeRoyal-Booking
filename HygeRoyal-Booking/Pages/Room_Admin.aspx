<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Room_Admin.aspx.cs" Inherits="HygeRoyal_Booking.Pages.Room_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="../Content/css/admin_page.css?v=1.0.0"/>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="form-add" id="formAdd">
            <button id="close" type="button" onclick="CloseForm()"><ion-icon name="close-circle-outline"></ion-icon></button>
            <h3>Room Information</h3>
            <div class="form">
                <div class="image">
                    <label for="imageRoom">Image</label>
                    <asp:FileUpload ID="imageRoom" runat="server"/>
                </div>
                <div class="name">
                    <label for="nameRoom">Name</label>
                    <input type="text" id="nameRoom" name="nameRoom" runat="server"/>
                </div>
                <div class="price">
                    <label for="priceRoom">Price</label>
                    <input type="number" id="priceRoom" name="priceRoom" runat="server"/>
                </div>
                <div class="discount">
                     <label for="discountRoom">Discount</label>
                     <input type="number" step="0.01" id="discountRoom" name="discountRoom" runat="server"/>
                </div>
                <div class="type">
                    <label for="roomBelong">Belong to</label>
                    <asp:DropDownList ID="roomBelong" runat="server">
                        <asp:ListItem Value="Zen Villa">Zen Villa</asp:ListItem>
                        <asp:ListItem Value="Hyge Resort">Hyge Resort</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <asp:Button CssClass="btnsubmit" Text="Add" OnClick="AddRoom" OnClientClick="showForm(); return true;" runat="server"/>
        </div>
        <h2>ROOM LIST</h2>
        <div class="list__room">
            <% foreach (var room in listroom){ %>
                    <div class="roomitem">
                        <img src='<%= ResolveUrl("~/ImageRooms/" + room.ImageUrl) %>' alt="Image Room" />
                        <h3><%= room.Name %></h3>
                        <p><%= room.Price%></p>
                        <p><%= room.Discount %></p>
                        <p><%= room.Belong%></p>
                    </div>
                    <hr />
            <% } %>
        </div>
        <button type="button" id="btn_add" onclick="showForm()">Add Room</button>
    </div>
    <script type="text/javascript" src="../Scripts/admin.js"></script>
</asp:Content>
