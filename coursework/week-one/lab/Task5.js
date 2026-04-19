function getBMI(weight, height){
    var bmi = weight / (height*height);
    return bmi;
    }

console.log(getBMI(85, 1.7));