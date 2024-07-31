const prevButton = document.getElementById('btnprev');
const nextButton = document.getElementById('btnnext');
const dots = document.querySelectorAll('.dot');
const sliderWrapper = document.querySelector('.slider-wrapper');
const cards = document.querySelectorAll('.slider-card');
const totalCards = cards.length;
let currentIndex = 0;
var cardsPerView = 3;
let screenWidth = window.innerWidth;
if (screenWidth <= 640) {
    cardsPerView = 1;
}

function updateSlider() {
    let slidePosition = currentIndex * (100 / cardsPerView);
    if (currentIndex >= totalCards - 2) {
        slidePosition = 0;
        currentIndex = 0;
    }

    sliderWrapper.style.transform = `translateX(-${slidePosition}%)`;
    dots.forEach((dot, index) => {
        dot.classList.toggle('active', index === currentIndex);
    });
}

prevButton.addEventListener('click', () => {
    currentIndex = (currentIndex === 0) ? totalCards - 1 : currentIndex - 1;
    updateSlider();
});

nextButton.addEventListener('click', () => {
    currentIndex = (currentIndex === totalCards - 1) ? 0 : currentIndex + 1;
    updateSlider();
});

dots.forEach((dot, index) => {
    dot.addEventListener('click', () => {
        currentIndex = index;
        updateSlider();
    });
});

updateSlider();

