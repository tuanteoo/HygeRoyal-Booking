<%@ Page Title="Hyge Royal | Hyge Resort Empty Rooms" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="HygeResortRooms.aspx.cs" Inherits="HygeRoyal_Booking.Pages.HygeResortRooms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="../Content/css/zenvillarooms.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="detail_booking" id="detail_booking" runat="server">
        <div class="list_bookings">
            <div class="layout">
                <% foreach (var booking in listbooking){ %>
                    <div class="booking_item">
                        <div class="booking_name">
                            <h3 id="room-name"><%= booking.Name %></h3>
                            <br>
                            <p>Customize</p>
                        </div> 
                        <div class="right">
                            <div class="booking_price" data-id="<%= booking.ID %>">
                                <h3 class="price_new" data-id="<%= booking.ID %>">$ <%= String.Format("{0:C2}", booking.priceDiscount(booking.Price,booking.Discount)) %></h3>
                                <p class="price_default" data-id="<%= booking.ID %>">$ <%= String.Format("{0:C2}",booking.Price) %></p>
                            </div>
                            <div class="booking_quantity">
                                <ion-icon class="minus_detail" onclick="minusquantity(event)" name="remove-outline" data-id="<%= booking.ID %>"></ion-icon>
                                <p class="quantity_detail" data-id="<%= booking.ID %>"><%= booking.Quantity %></p>
                                <ion-icon class="plus_detail" name="add-outline" data-id="<%= booking.ID %>" onclick="plusquantity(event)"></ion-icon>
                            </div>
                        </div>
                    </div>
                    <div class="line"></div>
                <% } %>
            </div>
            <button id="book_rooms" type="button">Book Rooms</button>
        </div>
    </div>
    <div class="container">
        <ul class="container__rooms">
            <% foreach (var room in listroom){ %>
                    <li class="room">
                        <div class="introduce">
                            <img src='<%= ResolveUrl("~/ImageRooms/" + room.ImageUrl) %>' alt="Image Room">
                            <div>
                                <div>
                                    <ion-icon name="people-outline"></ion-icon>
                                    <p>2 Person Accomodation</p>
                                </div>
                                <div>
                                    <ion-icon name="resize-outline""></ion-icon>
                                    <p>244 Sq. Ft</p>
                                </div>
                                <div>
                                    <ion-icon name="bed-outline"></ion-icon>
                                    <p>King Size Bed</p>
                                </div>
                                <div>
                                    <img src="../../Content/images/window_view.png" alt="icon View Window">
                                    <p>City View</p>
                                </div>
                            </div>
                        </div>
                        <div class="amenities">
                            <h1><%= room.Name %></h1>
                            <p>Our spacious suites embody luxury and sophistication and enjoy the experience with a spacious sitting area, luxury bedding and free Wi-Fi.</p>
                            <div class="amenities-detail">
                                <div>
                                    <ion-icon name="checkmark-circle"></ion-icon>
                                    <p>High-Speed Wifi</p>
                                </div>

                                 <div>
                                    <ion-icon name="checkmark-circle"></ion-icon>
                                    <p>Shower</p>
                                </div>

                                <div>
                                    <ion-icon name="checkmark-circle"></ion-icon>
                                    <p>Air-Conditioning</p>
                                </div>

                                <div>
                                    <ion-icon name="checkmark-circle"></ion-icon>
                                    <p>Parking</p>
                                </div>
                            </div>
                            <h4>View More Amenities</h4>
                        </div>
                        <div class="price">
                            <p><%= float.Parse(room.Discount) %>% OFF</p>
                            <h2 class="new_price" data-id="<%= room.ID %>">$ <%= String.Format("{0:N2}", room.priceDiscount(room.Price,room.Discount)) %></h2>
                            <p class="default_price" data-id="<%= room.ID %>">$ <%= String.Format("{0:N2}",room.Price) %></p>
                            <p class="days">1 Room Per Night</p>
                            <p class="quantity-people">2 Adults, 0 Children</p>
                            <div id="roomForm" data-email="<%= Session["UserEmail"] %>">
                                <div id="btn_quantity" data-id='<%= room.ID %>'>
                                    <div class="minus" data-id='<%= room.ID %>' onclick="minusquantity(event)">
                                        <ion-icon name="remove-outline"></ion-icon>
                                    </div>

                                    <p id="quantity" data-id='<%= room.ID %>'>1</p>

                                    <div class="plus" data-id='<%= room.ID %>' onclick="plusquantity(event)">
                                        <ion-icon name="add-outline"></ion-icon>
                                    </div>
                                </div>
                                <button class="add-room" type="button" onclick="addroom(event)" data-id='<%= room.ID %>' data-login='<%= Session["IsSignIn"] %>'>Add Room</button>
                            </div>
                            <p id="warning">Only 1 Room Left. Hurry!</p>
                        </div>
                    </li>
            <%}%>
        </ul>

        <div class="container__faqs">
            <h1>FAQS</h1>
            <hr>
            <div class="list__faqs">
                <div class="faq">
                    <div onclick="toggleAnswer(this)" class="question">
                        <div>
                            <ion-icon name="alert-circle-outline"></ion-icon>
                            <h2>What are the check-in and check-out times at Hyge Royal Resort?</h2>
                        </div>
                        <ion-icon name="chevron-up-outline" class="icon-up"></ion-icon>
                    </div>
                    <div class="answer">
                        Check-in time is at 3:00 PM and check-out time is at 11:00 AM. Early check-in and late check-out are available upon request and subject to availability.
                    </div>
                </div>
                <hr>
                <div class="faq">
                   <div onclick="toggleAnswer(this)" class="question">
                        <div>
                            <ion-icon name="alert-circle-outline"></ion-icon>
                            <h2>What is the cancellation policy at Hyge Royal Resort?</h2>
                        </div>
                        <ion-icon name="chevron-up-outline" class="icon-up"></ion-icon>
                    </div>
                    <div class="answer">
                        Our cancellation policy varies depending on the rate you booked. Please refer to your booking confirmation email for specific details. In general, most cancellations must be made at least 24 hours prior to arrival to avoid a cancellation fee.
                    </div>
                </div>
                <hr>
                <div class="faq">
                    <div onclick="toggleAnswer(this)" class="question">
                        <div>
                            <ion-icon name="alert-circle-outline"></ion-icon>
                            <h2>What types of payment does Hyge Royal Resort accept?</h2>
                        </div>
                        <ion-icon name="chevron-up-outline" class="icon-up"></ion-icon>
                    </div>
                    <div class="answer">
                        We accept all major credit cards, as well as cash and debit cards. Please note that a valid credit card is required to check in.
                    </div>
                </div>
                <hr>
                <div class="faq">
                    <div onclick="toggleAnswer(this)" class="question">
                        <div>
                            <ion-icon name="alert-circle-outline"></ion-icon>
                            <h2>Does Hyge Royal Resort offer any special packages or promotions?</h2>
                        </div>
                        <ion-icon name="chevron-up-outline" class="icon-up"></ion-icon>
                    </div>
                    <div class="answer">
                        Yes, we offer a variety of special packages and promotions throughout the year. Please visit our website or contact our reservations team for more information.
                    </div>
                </div>
                <hr>
                <div class="faq">
                    <div onclick="toggleAnswer(this)" class="question">
                        <div>
                            <ion-icon name="alert-circle-outline"></ion-icon>
                            <h2>What is the pet policy at Hyge Royal Resort?</h2>
                        </div>
                        <ion-icon name="chevron-up-outline" class="icon-up"></ion-icon>
                    </div>
                    <div class="answer">
                        We are a pet-friendly resort! Pets are allowed in our guest rooms for a fee of $50 per night, per pet. Please note that pets are not allowed in the pool, hot tub, or spa.
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="../Scripts/hygeresort_room.js"></script>
</asp:Content>
