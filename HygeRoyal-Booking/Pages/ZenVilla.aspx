<%@ Page Title="Hyge Royal | Zen Villa" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ZenVilla.aspx.cs" Inherits="HygeRoyal_Booking.Pages.ZenVilla" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="../Content/css/zenvilla.css?v=1.0.0"/>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <main class="container">
        <div class="container__story">
            <div class="container__story--content">
                <h3>ABOUT</h3><br>
                <p>Discover<br>Our Story</p><br>
                <div class="story__layout">
                    <hr>
                    <div><br>
                        <p>Zenvilla is designed to meet the requirements of modern day travelers. We understand each trip is different and have thoughtfully balanced the scapes of a peaceful home and a luxury hotel. </p>
                        <br><br><button>Know More</button>
                    </div>
                </div>
            </div>
            <div class="container__story--banner">
                <img src="../Content/images/zenvilla-banner.png" alt="Banner Story">
            </div>
        </div>

        <div class="container__rooms">
            <h3>OUR ROOMS</h3>
            <p>Exquisite Cottage<br>Accommodations</p>
            <div class="container__rooms--item">
                <div class="luxury">
                    <div>
                        <h3>Luxury Cottage Room</h3>
                        <p>Our spacious suites embody luxury and sophistication and enjoy the experience with a spacious sitting area, luxury bedding and free Wi-Fi.</p>
                        <a href="ZenVillaRooms.aspx" class="view-more">View More</a>
                        <a href="ZenVillaRooms.aspx" class="book-room"> Book Room</a>    
                    </div>
                </div>
                <div class="heritage">
                    <div>
                        <h3>Heritage Cottage Room</h3>
                        <p>Our spacious suites embody luxury and sophistication and enjoy the experience with a spacious sitting area, luxury bedding and free Wi-Fi.</p>
                        <a href="ZenVillaRooms.aspx" class="view-more">View More</a>
                        <a href="ZenVillaRooms.aspx" class="book-room"> Book Room</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="container__amenities">
            <h3>Amenities</h3>
            <div class="container__amenities--content">
                <div>
                    <p>
                        Your All-Inclusive<br>Experience
                    </p>
                    <p>
                        Indulge in a world of luxury and comfort with our exclusive resort amenities, designed to create unforgettable experiences for you.
                    </p>
                </div>
                <div>
                    <div>
                        <img src="../Content/images/wifi.svg" alt="Wifi">
                        <p>Wifi</p>
                    </div>
                    <div>
                        <img src="../Content/images/fine-furnishing.svg" alt="Furnishing">
                        <p>Fine-Furnishing</p>
                    </div>
                    <div>
                        <img src="../Content/images/private-parking.svg" alt="Parking">
                        <p>Private Parking</p>
                    </div>
                    <div>
                        <img src="../Content/images/air-conditioning.svg" alt="Conditioning">
                        <p>Air Conditioning</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="container__testimonials">
            <h3>Client Testimonials</h3>
            <div class="container__testimonials--content">
                <div class="card-slider">
                    <div class="card">
                        <img src="../Content/images/avatar-1.png" alt="Avatar">
                        <div class="content">
                            <p>“Lorem ipsum dolor sit amet, consectetur adipiscing elit. Velit ultricies feugiat arcu arcu tortor tortor in commodo leo. Nibh vel et viverra integer urna tincidunt at ipsum, semper. Convallis vel viverra diam elementum eget viverra morbi id integer. Orci mattis mauris nisi, fermentum. Elementum diam scelerisque adipiscing tincidunt sapien. Sed commodo mauris risus ultrices. Consectetur sagittis quam imperdiet ornare egestas ac mattis.”</p>
                            <p>Rohan Patel</p>
                            <p>CEO, ABCD Private Limited</p>
                        </div>
                    </div>
                    <div class="card">
                        <img src="../Content/images/avatar-2.png" alt="Avatar">
                        <div class="content">
                            <p>“Lorem ipsum dolor sit amet, consectetur adipiscing elit. Velit ultricies feugiat arcu arcu tortor tortor in commodo leo. Nibh vel et viverra integer urna tincidunt at ipsum, semper. Convallis vel viverra diam elementum eget viverra morbi id integer. Orci mattis mauris nisi, fermentum. Elementum diam scelerisque adipiscing tincidunt sapien. Sed commodo mauris risus ultrices. Consectetur sagittis quam imperdiet ornare egestas ac mattis.”</p>
                            <p>Rohan Patel</p>
                            <p>CEO, ABCD Private Limited</p>
                        </div>
                    </div>
                    <div class="card">
                        <img src="../Content/images/avatar-3.png" alt="Avatar">
                        <div class="content">
                            <p>“Lorem ipsum dolor sit amet, consectetur adipiscing elit. Velit ultricies feugiat arcu arcu tortor tortor in commodo leo. Nibh vel et viverra integer urna tincidunt at ipsum, semper. Convallis vel viverra diam elementum eget viverra morbi id integer. Orci mattis mauris nisi, fermentum. Elementum diam scelerisque adipiscing tincidunt sapien. Sed commodo mauris risus ultrices. Consectetur sagittis quam imperdiet ornare egestas ac mattis.”</p>
                            <p>Rohan Patel</p>
                            <p>CEO, ABCD Private Limited</p>
                        </div>
                    </div>
                    <div class="card">
                        <img src="../Content/images/avatar-2.png" alt="Avatar">
                        <div class="content">
                            <p>“Lorem ipsum dolor sit amet, consectetur adipiscing elit. Velit ultricies feugiat arcu arcu tortor tortor in commodo leo. Nibh vel et viverra integer urna tincidunt at ipsum, semper. Convallis vel viverra diam elementum eget viverra morbi id integer. Orci mattis mauris nisi, fermentum. Elementum diam scelerisque adipiscing tincidunt sapien. Sed commodo mauris risus ultrices. Consectetur sagittis quam imperdiet ornare egestas ac mattis.”</p>
                            <p>Rohan Patel</p>
                            <p>CEO, ABCD Private Limited</p>
                        </div>
                    </div>
                </div>
                <div class="dots">
                    <span class="dot active"></span>
                    <span class="dot"></span>
                    <span class="dot"></span>
                    <span class="dot"></span>
                </div>
            </div>
        </div>
        <div class="container__gallery">
            <h3>GALLERY</h3>
            <p>A Pictorial Escape</p>
            <div>
                <img src="../Content/images/zenvilla-escape1.png" alt="Zen Villa Escape">
                <img src="../Content/images/zenvilla-escape2.png" alt="Zen Villa Escape">
                <img src="../Content/images/zenvilla-escape3.png" alt="Zen Villa Escape">
                <img src="../Content/images/zenvilla-escape4.png" alt="Zen Villa Escape">
                <img src="../Content/images/zenvilla-escape5.png" alt="Zen Villa Escape">
                <img src="../Content/images/zenvilla-escape6.png" alt="Zen Villa Escape">
            </div>
        </div>
        <div class="container__location">
            <h3>LOCATION</h3>
            <p>Unveiling the Location</p>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1862.59562223068!2d105.8377074939361!3d20.984969678022157!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac5d653685db%3A0xf62986275e5cae6d!2zOTZhIFAuIMSQ4buLbmggQ8O0bmcsIFBoxrDGoW5nIExp4buHdCwgSG_DoG5nIE1haSwgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1720597697371!5m2!1svi!2s" width="1280" height="677" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
        <div class="container__contactUs">
            <h3>Contact Us</h3>
            <p>Reach out to Hyge Royal</p>
            <div>
                <input class="input fname" type="text" placeholder="First Name">
                <input class="input lname" type="text" placeholder="Last Name">
                <input class="input tel" type="tel" placeholder="Contact Number">
                <input class="input email" type="email" placeholder="Email Address">
                <textarea class="input message" placeholder="Message"></textarea>
            </div>
            <button>Submit</button>
        </div>
    </main>
    <script type="text/javascript" src="../Scripts/zenvilla.js"></script>
</asp:Content>
