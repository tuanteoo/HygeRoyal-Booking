document.addEventListener("DOMContentLoaded", function () {
    const cards = document.querySelector(".card-slider");
    const cardWidth = document.querySelector(".card").offsetWidth;
    const dots = document.querySelectorAll(".dot");

    let currentIndex = 0;

    dots.forEach((dot, index) => {
        dot.addEventListener("click", () => {
            showCard(index);
        });
    });

    function showCard(index) {
        currentIndex = index;
        cards.style.transform = `translateX(-${currentIndex * cardWidth}px)`;

        dots.forEach((dot, i) => {
            if (i === index) {
                dot.classList.add("active");
            } else {
                dot.classList.remove("active");
            }
        });
    }


    let startX = 0;
    let isDragging = false;
    let shiftX = 0;

    cards.addEventListener("mousedown", (e) => {
        isDragging = true;
        startX = e.pageX - cards.offsetLeft;
        shiftX = 0;
        cards.style.transition = "none";
    });

    cards.addEventListener("mousemove", (e) => {
        if (isDragging) {
            const currentX = e.pageX - cards.offsetLeft;
            shiftX = currentX - startX;
            cards.style.transform = `translateX(-${shiftX - currentIndex * cardWidth}px)`;
        }
    });

    cards.addEventListener("mouseup", () => {
        isDragging = false;
        const movedCards = Math.round(shiftX / cardWidth);
        currentIndex -= movedCards;
        currentIndex = Math.min(Math.max(currentIndex, 0), dots.length - 1);
        showCard(currentIndex);
        cards.style.transition = "transform 1s ease";
    });

    cards.addEventListener("mouseleave", () => {
        if (isDragging) {
            isDragging = false;
            showCard(currentIndex);
            cards.style.transition = "transform 1s ease";
        }
    });
});