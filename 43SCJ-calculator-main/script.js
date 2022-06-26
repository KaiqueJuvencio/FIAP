const display = document.querySelector('#display');
const keys = document.querySelectorAll('[id*=key]');
const operators = document.querySelectorAll('[id*=Operator]');
const decimal = document.querySelector('[id=decimal]');

let newNumber = true;
let operator;
let previousNumber;
let actualNumber;

if(display.textContent === "")
    display.textContent = "0";

function updateDisplay(number) {
    if (display.textContent.includes(",") && number == ",")
        return 0;
    if (newNumber) {
        display.textContent = number;
        newNumber = false;
    }
    else display.textContent += number;
}

function updateDisplayDecimal() {    
    updateDisplay(",");
}

const insertNumber = ({ target }) =>
    updateDisplay(target.textContent);

keys.forEach(key => key.addEventListener('click', insertNumber));
decimal.addEventListener('click', updateDisplayDecimal);

const selectOperator = (event) => {
    newNumber = true;
    operator = event.target.textContent;
    previousNumber = display.textContent;
}

operators.forEach(operator => operator.addEventListener("click", selectOperator));

function checkComma() {
    actualNumber = display.textContent;
    if (previousNumber.includes(","))
        previousNumber = previousNumber.replace(",", ".");
    if (actualNumber.includes(","))
        actualNumber = actualNumber.replace(",", ".");    
}

const calculate = () => {    
    checkComma();
    const result = eval(`${previousNumber}${operator}${actualNumber}`); //template string
    newNumber = true;
    updateDisplay(result);
}

const equal = document.querySelector("#equal");

equal.addEventListener('click', calculate);

const clearDisplay = () => display.textContent = "0";

document.querySelector("#clearDisplay").addEventListener("click", clearDisplay);

const clearCalc = () => {
    clearDisplay();
    newNumber = true;
    operator = undefined;
    previousNumber = undefined;
};

document.querySelector("#clearCalc").addEventListener("click", clearCalc);

const removeLastNumber = () => {
    newNumber = true;
    if(display.textContent.length == 1)
        display.textContent = "0";     
    else
        updateDisplay(display.textContent.slice(0, -1));             
}

document.querySelector("#backspace").addEventListener("click", removeLastNumber);

const invertSignal = () => {
    newNumber = true;
    updateDisplay(display.textContent * -1);
}


document.querySelector("#inverter").addEventListener("click", invertSignal);