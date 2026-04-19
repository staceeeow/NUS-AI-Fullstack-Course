var n1 = 20;
var n2 = 60;
var n3 = 55;
var largest;

if (n1 >= n2 && n1 >= n3) {
    largest = n1;
} else if (n2 >= n1 && n2 >= n3) {
    largest = n2;
} else {
    largest = n3;
}

console.log("The largest number is", largest);