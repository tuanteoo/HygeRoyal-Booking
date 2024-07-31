const btnaddrooms = document.querySelectorAll('.add-room');
const btnminuss = document.querySelectorAll('.minus');
const btnpluss = document.querySelectorAll('.plus');
const btnbookroom = document.getElementById('book_rooms');
const minusdetails = document.querySelectorAll('.minus_detail');
const plusdetails = document.querySelectorAll('.plus_detail');


btnbookroom.addEventListener('click', () => {
    window.location.href = 'BookingPayment.aspx';
});

function setButtonVisibility(roomID, shouldHide) {
    const button = document.querySelector(`.add-room[data-id="${roomID}"]`);
    const quantityLayout = document.querySelector(`#btn_quantity[data-id="${roomID}"]`);
    if (button) {
        button.style.display = shouldHide ? 'none' : 'block';
        quantityLayout.style.display = shouldHide ? 'grid' : 'none';
    }
}

function initializeButtonStates() {
    const hiddenRooms = JSON.parse(localStorage.getItem('hiddenRooms')) || [];
    hiddenRooms.forEach(roomID => setButtonVisibility(roomID, true));

    const hiddenQuantity = JSON.parse(localStorage.getItem('hiddenQuantity')) || [];
    hiddenQuantity.forEach(roomID => setButtonVisibility(roomID, true));
}

function parseFloatPrice(Price) {
    let price = parseFloat(Price.replace(/\$ /g, '').replace(/\./g, '').replace(/,/g, '.'));

    return price;
}

function formatPrice(price) {
    return '$ ' + price.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,');
}

function addroom(event) {
    const roomID = event.currentTarget.getAttribute('data-id');
    const priceNew = document.querySelector(`.new_price[data-id="${roomID}"]`);
    const priceDefault = document.querySelector(`.default_price[data-id="${roomID}"]`);
    var userEmail = $('#roomForm').data('email');
    const isLogin = $('.add-room').data('login');
    

    if (isLogin === 'False') {
        alert('Bạn vui lòng đăng nhập/đăng ký để có thể đặt phòng và sử dụng dịch vụ');
    }
    else {
        $.ajax({
            type: "POST",
            url: "ZenVillaRooms.aspx/InsertRoom",
            data: JSON.stringify({
                ID: parseInt(roomID),
                Email: userEmail
            }),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                let hiddenRooms = JSON.parse(localStorage.getItem('hiddenRooms')) || [];
                if (!hiddenRooms.includes(roomID)) {
                    hiddenRooms.push(roomID);
                    localStorage.setItem('hiddenRooms', JSON.stringify(hiddenRooms));
                }

                let hiddenQuantity = JSON.parse(localStorage.getItem('hiddenQuantity')) || [];
                if (!hiddenQuantity.includes(roomID)) {
                    hiddenQuantity.push(roomID);
                    localStorage.setItem('hiddenQuantity', JSON.stringify(hiddenQuantity));
                }

                setButtonVisibility(roomID, true);

                localStorage.setItem(`priceNew_${roomID}`, parseFloatPrice(priceNew.textContent));
                localStorage.setItem(`priceDefault_${roomID}`, parseFloatPrice(priceDefault.textContent));

                location.reload();
            },
            error: function (xhr, status, error) {
                alert('An error occurred:' + xhr.responseText);
            }
        });
    }
}

function minusquantity(event){
    const roomID = event.currentTarget.getAttribute('data-id');
    const quantityElement = document.querySelector(`#quantity[data-id="${roomID}"]`);
    const quantitybooking = document.querySelector(`.quantity_detail[data-id="${roomID}"]`);
    const priceNew = document.querySelector(`.price_new[data-id="${roomID}"]`);
    const priceDefault = document.querySelector(`.price_default[data-id="${roomID}"]`);
    const priceNewValue = localStorage.getItem(`priceNew_${roomID}`);
    const priceDefaultValue = localStorage.getItem(`priceDefault_${roomID}`);

    let quantity = parseInt(quantityElement.textContent);
    var userEmail = $('#roomForm').data('email');

    if (quantity > 1) {
        quantity -= 1;

        quantityElement.textContent = quantity;
        quantitybooking.textContent = quantity;
        priceNew.textContent = formatPrice(priceNewValue * quantity);
        priceDefault.textContent = formatPrice(priceDefaultValue * quantity);
    }
    else if (quantity == 1) {
        $.ajax({
            type: "POST",
            url: "ZenVillaRooms.aspx/DeleteRoom",
            data: JSON.stringify({
                ID: parseInt(roomID),
                email: userEmail
            }),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {

                let hiddenRooms = JSON.parse(localStorage.getItem('hiddenRooms')) || [];
                let hiddenQuantity = JSON.parse(localStorage.getItem('hiddenQuantity')) || [];

                hiddenRooms = hiddenRooms.filter(id => id !== roomID);
                hiddenQuantity = hiddenQuantity.filter(id => id !== roomID);

                localStorage.setItem('hiddenRooms', JSON.stringify(hiddenRooms));
                localStorage.setItem('hiddenQuantity', JSON.stringify(hiddenQuantity));

                setButtonVisibility(roomID, false);

                localStorage.removeItem(`priceNew_${roomID}`);
                localStorage.removeItem(`priceDefault_${roomID}`);


                location.reload();
            },
            error: function (xhr, status, error) {
                alert('An error occurred:' + xhr.responseText);
            }
        });
    }
}

function plusquantity(event) {
    const roomID = event.currentTarget.getAttribute('data-id');
    const quantityElement = document.querySelector(`#quantity[data-id="${roomID}"]`)
    const quantitybooking = document.querySelector(`.quantity_detail[data-id="${roomID}"]`)
    const priceNew = document.querySelector(`.price_new[data-id="${roomID}"]`);
    const priceDefault = document.querySelector(`.price_default[data-id="${roomID}"]`);
    const priceNewValue = localStorage.getItem(`priceNew_${roomID}`);
    const priceDefaultValue = localStorage.getItem(`priceDefault_${roomID}`);

    let quantity = parseInt(quantityElement.textContent);

    quantity += 1;

    quantityElement.textContent = quantity;
    quantitybooking.textContent = quantity;
    priceNew.textContent = formatPrice(priceNewValue * quantity);
    priceDefault.textContent = formatPrice(priceDefaultValue * quantity);
}

window.addEventListener('load', initializeButtonStates);

function toggleAnswer(element) {
    const faqItem = element.parentElement;
    const answer = faqItem.querySelector('.answer');
    const button_up = faqItem.querySelector('.icon-up');

    if (answer.style.display === 'block') {
        answer.style.display = 'none';
        button_up.classList.remove('icon-up-active');
    } else {
        document.querySelectorAll('.answer').forEach(ans => ans.style.display = 'none');
        document.querySelectorAll('.icon-up').forEach(btn => btn.classList.remove('icon-up-active'));

        answer.style.display = 'block';
        button_up.classList.add('icon-up-active');
    }
}
