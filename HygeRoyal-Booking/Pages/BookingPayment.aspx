<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="BookingPayment.aspx.cs" Inherits="HygeRoyal_Booking.Pages.BookingPayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="../Content/css/bookingpayment.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="container__steps">
            <div class="list-step">
                <p id="step1" class="step">1</p>
                <span class="line" id="line1"></span>
                <p id="step2" class="step">2</p>
                <span class="line" id="line2"></span>
                <p id="step3" class="step">3</p>
            </div>
            <div class="list-title">
                <p class="title 1" >Your Information</p>
                <p class="title 2" >Payment Information</p>
                <p class="title 3">Booking Confirmation</p>
            </div>
        </div>
        <div class="container__main">
            <div class="container__forms">
                <div class="form" id="form1">
                    <div class="form__infor">
                        <h3>Booking Form</h3>
                        <div class="infor__customer">
                            <h2 >Let Us Know Who You Are</h2>
                            <div class="form-layout">
                                <div class="form-input">
                                    <input type="text" placeholder="Name">
                                    <input type="tel" placeholder="Mobile Number">
                                    <input type="email" placeholder="Email">
                                    <input type="text" placeholder="Address">
                                    <input type="text" placeholder="Special Request">
                                </div>
                                <button onclick="nextStep(2)" type="button">Submit</button>
                            </div>
                        </div>
                    </div>
                    <div class="form__rooms">
                        <div class="room__summary">
                            <h3>Room Summary</h3>
                            <div class="infor__room">
                                <div>
                                    <h2>Aug 2, 2024 - Aug 4, 2024</h2>
                                    <h2>1 Days</h2>
                                </div>
                    
                                <div>
                                    <h3>Luxury Cottage Room * 2</h3>
                                    <h3>Change</h3>
                                </div>
                                <hr>
                                <div class="infor-room">
                                    <img src="../../Content/images/zenvilla-cottage2.png" alt="Luxury Cottage Room">
                                    <div>
                                        <div>
                                            <ion-icon name="people-outline"></ion-icon>
                                            <p>2 Person Accomodation</p>
                                        </div>
                                        <div>
                                            <ion-icon name="bed-outline"></ion-icon>
                                            <p>King Size Bed</p>
                                        </div>
                                        <div>
                                            <ion-icon name="wifi-outline"></ion-icon>
                                            <p>Free Wifi</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="payment__summary">
                            <h3>Payment Summary</h3>
                            <div class="price">
                                <div>
                                    <h3>Subtotal</h3>
                                    <p>:</p>
                                    <h2 id="subtotal">$ 6,000.00</h2>
                                </div>
                                <div>
                                    <h3>Taxes & Fees</h3>
                                    <p>:</p>
                                    <h2 id="taxes">$ 1,200.00</h2>
                                </div>
                                <hr>
                                <div>
                                    <h3>Total Pay</h3>
                                    <p>:</p>
                                    <h1 id="total__summary">$ 7,200.00</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form" id="form2">
                    <div class="form__paymentportal">
                        <h3>Payment Portal</h3>
                        <div class="infor__payment">
                            <p>Please provide a valid payment method</p>
                            <div class="payment_method">
                                <i style="font-size: 32px; color: #044AB3;" class="fa-brands fa-cc-visa"></i>
                                <img style="height: 28px;" src="../../Content/images/master-card.png" alt="Master Card">
                                <img style="height: 34px;" src="../../Content/images/jcb.png" alt="JCB">
                            </div>
                            <div class="payment__infor">
                                <div class="card_infor">
                                    <input type="text" id="cardnumber" placeholder="Card Number*" maxlength="22">
                                    <input type="text" id="card_date" placeholder="Expiration Date (MM/YY)*" maxlength="7">
                                    <input type="text" id="cvv" placeholder="CVV*" maxlength="3">
                                    <input type="text" id="nameoncard" placeholder="Name on Card*">
                                </div>
                                <div class="policy">
                                    <h1>Policies</h1>
                                    <div>
                                        <p>Check-in</p>
                                        <p>Check-out</p>
                                        <p>After 2:00 PM</p>
                                        <p>Before 12: PM</p>
                                    </div>
                                    <h3>Guarantee Policy</h3>
                                    <p>A credit card is required to guarantee a booking. Full prepayment is required 14 days prior to arrival.</p>
                                    <h3>Cancel Policy</h3>
                                    <p>Reservations can be cancelled or modified up to 14 days prior to arrival free of charge | 13-7 days before arrival 1 night charge |
                                        6-3 days before arrival 50% charge of total amount | cancellation 2 days before, no-show or early departure 100% charge.</p>
                                </div>
                                <button onclick="nextStep(3)" type="button">Payment</button>
                            </div>
                        </div>
                    </div>
                    <div class="form__rooms">
                        <div class="room__summary">
                            <h3>Room Summary</h3>
                            <div class="infor__room">
                                <div>
                                    <h2>Aug 2, 2024 - Aug 4, 2024</h2>
                                    <h2>1 Days</h2>
                                </div>
                    
                                <div>
                                    <h3>Luxury Cottage Room * 2</h3>
                                    <h3>Change</h3>
                                </div>
                                <hr>
                                <div class="infor-room">
                                    <img src="../../Content/images/zenvilla-cottage2.png" alt="Luxury Cottage Room">
                                    <div>
                                        <div>
                                            <ion-icon name="people-outline"></ion-icon>
                                            <p>2 Person Accomodation</p>
                                        </div>
                                        <div>
                                            <ion-icon name="bed-outline"></ion-icon>
                                            <p>King Size Bed</p>
                                        </div>
                                        <div>
                                            <ion-icon name="wifi-outline"></ion-icon>
                                            <p>Free Wifi</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="payment__summary">
                            <h3>Payment Summary</h3>
                            <div class="price">
                                <div>
                                    <h3>Subtotal</h3>
                                    <p>:</p>
                                    <h2 id="subtotal-form2">$ 6,000.00</h2>
                                </div>
                                <div>
                                    <h3>Taxes & Fees</h3>
                                    <p>:</p>
                                    <h2 id="taxes-form2">$ 1,200.00</h2>
                                </div>
                                <hr>
                                <div>
                                    <h3>Total Pay</h3>
                                    <p>:</p>
                                    <h1 id="total__summary-form2">$ 7,200.00</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form" id="form3">
                    <div>
                        <div>
                            <ion-icon name="checkmark-circle"></ion-icon>
                            <h1>Booking Confirmed</h1>
                        </div>
                        <br>
                        <p>You will receive a mail with the details of the room booking. Awaiting your presence. Thanks for booking with us!</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="../Scripts/payment.js"></script>
</asp:Content>
