function nextStep(stepNumber) {
    const container = document.querySelector('.container__forms');
    const line1 = document.getElementById('line1');
    const line2 = document.getElementById('line2');
    const step2 = document.getElementById('step2');
    const step3 = document.getElementById('step3');
    if (stepNumber === 2) {
        container.style.transform = 'translateX(-99vw)';
        container.style.height = '130vh';
        line1.classList.add('green');
        step2.classList.add('green');

    }
    else if (stepNumber === 3) {
        container.style.transform = 'translateX(-198vw)';
        container.style.height = '50vh';
        line2.classList.add('green');
        step3.classList.add('green');
    }
}

const cardnumber = document.getElementById('cardnumber');
const date = document.getElementById('card_date');
const cvv = document.getElementById('cvv');

cardnumber.addEventListener('input', (e) => {
    let value = e.target.value.replace(/\D/g, '');
    value = value.replace(/(\d{4})(?=\d)/g, '$1  ');
    e.target.value = value;
});

date.addEventListener('input', (e) => {
    let value = e.target.value.replace(/\D/g, '');
    if (value.length >= 2) {
        value = value.slice(0, 2) + ' / ' + value.slice(2);
    }
    e.target.value = value;
});

cvv.addEventListener('input', (e) => {
    let value = e.target.value.replace(/\D/g, '');
    e.target.value = value;
});

