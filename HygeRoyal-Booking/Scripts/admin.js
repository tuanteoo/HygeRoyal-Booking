const layoutForm = document.getElementById('formAdd');
const btnShow = document.getElementById('btn_add');
const btnAdd = document.getElementById('Submmit');
const btnClose = document.getElementById('close');

function showForm() {
    layoutForm.style.display = "flex";
}
function CloseForm() {
    layoutForm.style.display = "none";
}

/*function InsertData() {
    var fileimage = document.getElementById('imageRoom');
    const nameRoom = document.getElementById('nameRoom');
    const priceRoom = document.getElementById('priceRoom');
    const discountRoom = document.getElementById('discountRoom');
    const belongRoom = document.getElementById('roomBelong');


    var image = fileimage.value.split("\\").pop();
    var name = nameRoom.value;
    var price = priceRoom.value;
    var discount = discountRoom.value;
    var belong = belongRoom.value;

    var formData = new FormData();
    var file = fileimage.files[0];



    if (image == '' || name == '' || price == '' || discount == '') {
        alert('Please enter complete data');
    }

    if (file) {
        formData.append('imageRoom', file);

        $.ajax({
            url: 'UploadHandler.ashx',
            type: 'POST',
            data: formData,
            contentType: false,
            processData: false,
            success: function (response) {
                alert('Upload successful!');
            },
            error: function (xhr, status, error) {
                alert('Upload failed: ' + error);
            }
        });
    }
    else {
        alert('Please select a file.');
    }

    *//*$.ajax({
        type: "POST",
        url: "Room_Admin.aspx/InsertRoom",
        data: JSON.stringify({
            image: image,
            name: name,
            price: parseInt(price),
            discount: discount,
            roombelong: belong
        }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            alert(response.d);

            filepath.value = '';
            nameRoom.value = '';
            priceRoom.value = '';
            discountRoom.value = '';
        },
        error: function (response) {
            alert("Error: " + response.responseText);
        }
    });*//*

}*/