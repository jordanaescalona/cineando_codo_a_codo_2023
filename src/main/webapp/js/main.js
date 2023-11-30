
  /* Promociones count */
const minusButtons = document.querySelectorAll('.minus');
const plusButtons = document.querySelectorAll('.plus');
const countElements = document.querySelectorAll('.counter');


const counts = Array.from({ length: minusButtons.length }, () => 0);


function updateCount(index) {
countElements[index].textContent = counts[index];
}

for (let i = 0; i < minusButtons.length; i++) {
minusButtons[i].addEventListener('click', function () {
    if (counts[i] > 0) {
    counts[i]--;
    updateCount(i);
    }
});

plusButtons[i].addEventListener('click', function () {
    counts[i]++;
    updateCount(i);
});


updateCount(i);

}


/* Suma total Promociones */


const card1PlusButton = document.querySelector('#card-1 .plus');
const card1MinusButton = document.querySelector('#card-1 .minus');
const card1CounterElement = document.querySelector('#card-1 .counter');

const card2PlusButton = document.querySelector('#card-2 .plus');
const card2MinusButton = document.querySelector('#card-2 .minus');
const card2CounterElement = document.querySelector('#card-2 .counter');

const card3PlusButton = document.querySelector('#card-3 .plus');
const card3MinusButton = document.querySelector('#card-3 .minus');
const card3CounterElement = document.querySelector('#card-3 .counter');

const totalElement = document.querySelector('.total-items .text-danger');

const summaryList = document.getElementById('summary-list');

const card1Text = "Válido para el canje de dos entradas 2D o 3D en sala tradicional, sala XD, sala Play o sala IMAX, y un combo para dos (2 Bebidas Pequeñas (350cc) + 1 Popcorn Promocional). (Excluye butacas sala Premier, Palco Premier y butacas D-BOX)";
const card2Text = "Válido para el canje de dos entradas 2D o 3D en sala tradicional, sala XD, sala Play o sala IMAX, y un combo individual (1 Bebidas Pequeñas (350cc) + 1 Popcorn). (Excluye sala Premier, Palco Premier y butacas D-BOX)";
const card3Text = "Válido para el canje de dos entradas 2D o 3D en sala tradicional, sala XD, sala Play o sala IMAX.(Excluye sala Premier, Palco Premier y butacas D-BOX)";

const card1Price = parseInt(document.getElementById('card-1').getAttribute('data-price'));
const card2Price = parseInt(document.getElementById('card-2').getAttribute('data-price'));
const card3Price = parseInt(document.getElementById('card-3').getAttribute('data-price'));

const btnPay = document.getElementById ('btn-pay');


let card1Count = 0;
let card2Count = 0;
let card3Count = 0;


function updateCountsAndTotal() {
    card1CounterElement.textContent = card1Count;
    card2CounterElement.textContent = card2Count;
    card3CounterElement.textContent = card3Count;


    const total = (card1Count * card1Price) + (card2Count * card2Price) + (card3Count * card3Price);
    totalElement.textContent = `$ ${total}`;
    
    
    
    const pagarButton = document.querySelector('.next');
    pagarButton.disabled = total === 0;

    if (total > 0) {
        btnPay.classList.remove('btn-secondary');
        btnPay.classList.add('btn-primary');
      } else {
        btnPay.classList.remove('btn-primary');
        btnPay.classList.add('btn-secondary');
      }
    }


    card1PlusButton.addEventListener('click', function () {
    card1Count++;
    updateCountsAndTotal();
    summaryList.innerHTML = `<li>${card1Text}</li>`;
    });

    card1MinusButton.addEventListener('click', function () {
    if (card1Count > 0) {
        card1Count--;
        updateCountsAndTotal();
        summaryList.innerHTML = card1Count > 0 ? `<li>${card1Text}</li>` : '';
    } 
    });

    card2PlusButton.addEventListener('click', function () {
    card2Count++;
    updateCountsAndTotal();
    summaryList.innerHTML = `<li>${card2Text}</li>`;
    });

    card2MinusButton.addEventListener('click', function () {
    if (card2Count > 0) {
        card2Count--;
        updateCountsAndTotal();
        summaryList.innerHTML = card2Count > 0 ? `<li>${card2Text}</li>` : '';
    }
    });

    card3PlusButton.addEventListener('click', function () {
        card3Count++;
        updateCountsAndTotal();
        summaryList.innerHTML = `<li>${card3Text}</li>`;
    });
    
    card3MinusButton.addEventListener('click', function () {
        if (card3Count > 0) {
        card3Count--;
        updateCountsAndTotal();
        summaryList.innerHTML = card3Count > 0 ? `<li>${card3Text}</li>` : '';
        }
    });


updateCountsAndTotal();

/* Pagar Button */




// Si el total es mayor que cero, habilitar el botón y cambiar la clase



