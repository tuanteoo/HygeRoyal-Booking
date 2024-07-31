<%@ Page Title="Hyge Royal | Booking resort, phòng nghỉ giá tốt nhất" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="HygeRoyal_Booking.Pages.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="../Content/css/home.css"/>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <div class="container__ourResorts">
            <h2>Our Resorts</h2>
            <div class="container__ourResorts--introduce">
                <div></div>
                <div>
                    <h2>Zen Villa</h2>
                    <p>Zenvilla is designed to meet the requirements of modern day travelers. We understand each trip is different and have thoughtfully balanced the scapes of a peaceful home and a luxury hotel.</p>
                    <a href="ZenVilla.aspx">View Resort</a>
                </div>
                <div></div>
                <div>
                    <h2>Hyge Resort</h2>
                    <p>HygeResort is designed to meet the requirements of modern day travelers. We understand each trip is different and have thoughtfully balanced the scapes of a peaceful home and a luxury hotel.</p>
                    <a href="HygeResort.aspx">View Resort</a>
                </div>
            </div>
        </div>
        <div class="container__amenities">
            <div class="container__amenities--content">
                <h3>Elevate Your Stay with<br>Our Premium Amenities</h3>
                <p>Indulge in a world of luxury and comfort with our exclusive resort amenities, designed to create unforgettable experiences for you.</p>
                <button>Contact Now</button>
            </div>
            <div class="container__amenities--list">
                <div class="item">
                    <img src="../Content/images/living-room.svg" alt="Living Rooms">
                    <p>Living Rooms</p>
                </div>
                <div class="item">
                    <img src="../Content/images/luxury-bed.svg" alt="Luxury Bedrooms">
                    <p>Luxury Bedrooms</p>
                </div>
                <div class="item">
                    <img src="../Content/images/chef.svg" alt="Modular Kitchen">
                    <p>Modular Kitchen</p>
                </div>
                <div class="item">
                    <img src="../Content/images/fine-furnishing.svg" alt="Fine Furnishing">
                    <p>Fine Furnishing</p>
                </div>
                <div class="item">
                    <img src="../Content/images/wifi.svg" alt="Free Wifi">
                    <p>Free Wifi</p>
                </div>
                <div class="item">
                    <img src="../Content/images/chair-out.svg" alt="Sit-Out Area">
                    <p>Sit-Out Area</p>
                </div>
                <div class="item">
                    <img src="../Content/images/private-parking.svg" alt="Private Parking">
                    <p>Private Parking</p>
                </div>
                <div class="item">
                    <img src="../Content/images/air-conditioning.svg" alt="Air Conditioning">
                    <p>Air Conditioning</p>
                </div>
            </div>
        </div>

        <div class="container__discover">
            <div></div>
            <div>
                <h2>Discover our History</h2>
                <p>At Hyge Royal, our story unfolds with a dedication to hospitality, delivering extraordinary experiences.
                    <br><br>
                    Our vision is a haven of elegance where guests immerse in comfort. Meticulously crafted details, warm staff, and sustainable practices define our commitment.</p>
                <button>Explore More</button>    
            </div>
        </div>

        <div class="container__offbeat">
            <h2>Offbeat Gems in Kodaikanal!</h2>
            <div class="container__offbeat--list">
                <div></div>
                <div></div>
                <div></div>
            </div>
        </div>

        <div class="container__evaluation">
            <div class="container__evaluation--heading">
                <ion-icon name="chevron-back-outline" id="btnprev"></ion-icon>
                <h2>People Love Us</h2>
                <ion-icon name="chevron-forward-outline" id="btnnext"></ion-icon>
            </div>
            <div class="container__evaluation--dot">
                <span class="dot active"></span>
                <span class="dot"></span>
                <span class="dot"></span>
                <span class="dot"></span>
                <span class="dot"></span>
            </div>
            <div class="container__evaluation--slider">
                <div class="slider-wrapper">
                    <div class="slider-card">
                        <img src="../Content/images/avatar-1.png" alt="Avatar Lead"/>
                        <h3 class="name">Hannah Schmitt</h3>
                        <p class="job">Lead Designer</p>
                        <img class="icon" src="../Content/images/clarity_block.png" alt="clarity">
                        <p class="evaluation">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ipsa commodi modi aliquam. Provident dolorem est, aliquid adipisci, distinctio asperiores amet quas consequuntur ratione aspernatur, libero error quibusdam nobis quidem numquam.</p>
                    </div>
                    <div class="slider-card">
                        <img src="../Content/images/avatar-3.png" alt="Avatar Lead"/>
                        <h3 class="name">Hannah Schmitt</h3>
                        <p class="job">Lead Designer</p>
                        <img class="icon" src="../Content/images/clarity_block.png" alt="clarity">
                        <p class="evaluation">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ipsa commodi modi aliquam. Provident dolorem est, aliquid adipisci, distinctio asperiores amet quas consequuntur ratione aspernatur, libero error quibusdam nobis quidem numquam.</p>
                    </div>
                    <div class="slider-card">
                        <img src="../Content/images/avatar-1.png" alt="Avatar Lead"/>
                        <h3 class="name">Hannah Schmitt</h3>
                        <p class="job">Lead Designer</p>
                        <img class="icon" src="../Content/images/clarity_block.png" alt="clarity">
                        <p class="evaluation">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ipsa commodi modi aliquam. Provident dolorem est, aliquid adipisci, distinctio asperiores amet quas consequuntur ratione aspernatur, libero error quibusdam nobis quidem numquam.</p>
                    </div>
                    <div class="slider-card">
                        <img src="../Content/images/avatar-3.png" alt="Avatar Lead"/>
                        <h3 class="name">Hannah Schmitt</h3>
                        <p class="job">Lead Designer</p>
                        <img class="icon" src="../Content/images/clarity_block.png" alt="clarity">
                        <p class="evaluation">Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique eum fuga, voluptatum doloribus pariatur obcaecati nihil ullam cum rerum quasi reiciendis dolore, unde minus ipsum maiores voluptate laboriosam illo a!</p>
                    </div>
                    <div class="slider-card">
                        <img src="../Content/images/avatar-1.png" alt="avatar">
                        <h3 class="name">Hannah Schmitt</h3>
                        <p class="job">Lead Designer</p>
                        <img class="icon" src="../Content/images/clarity_block.png" alt="clarity">
                        <p class="evaluation">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ipsa commodi modi aliquam. Provident dolorem est, aliquid adipisci, distinctio asperiores amet quas consequuntur ratione aspernatur, libero error quibusdam nobis quidem numquam.</p>
                    </div>
                    <div class="slider-card">
                        <img src="../Content/images/avatar-1.png" alt="avatar">
                        <h3 class="name">Hannah Schmitt</h3>
                        <p class="job">Lead Designer</p>
                        <img class="icon" src="../Content/images/clarity_block.png" alt="clarity">
                        <p class="evaluation">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ipsa commodi modi aliquam. Provident dolorem est, aliquid adipisci, distinctio asperiores amet quas consequuntur ratione aspernatur, libero error quibusdam nobis quidem numquam.</p>
                    </div>
                    <div class="slider-card">
                        <img src="../Content/images/avatar-1.png" alt="avatar">
                        <h3 class="name">Hannah Schmitt</h3>
                        <p class="job">Lead Designer</p>
                        <img class="icon" src="../Content/images/clarity_block.png" alt="clarity">
                        <p class="evaluation">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ipsa commodi modi aliquam. Provident dolorem est, aliquid adipisci, distinctio asperiores amet quas consequuntur ratione aspernatur, libero error quibusdam nobis quidem numquam.</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="container__maps">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1862.59562223068!2d105.8377074939361!3d20.984969678022157!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac5d653685db%3A0xf62986275e5cae6d!2zOTZhIFAuIMSQ4buLbmggQ8O0bmcsIFBoxrDGoW5nIExp4buHdCwgSG_DoG5nIE1haSwgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1720597697371!5m2!1svi!2s" width="1280" height="677" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            <div class="container__maps--content">
                <p><span>Hyge Royal</span><br>96a P.Dinh Cong, Phuong Liet, Hoang Mai, Ha Noi, VietNam</p>
                <p>Monday to Friday<br>9am-7pm</p>
            </div>
        </div>
    </main>
    <script type="text/javascript" src="../Scripts/home.js?v=1.0.0"></script>
</asp:Content>
