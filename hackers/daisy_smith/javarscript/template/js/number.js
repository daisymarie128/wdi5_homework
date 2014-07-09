var greaterNum = function (num1, num2){
  if (num1 >= num2){
    var answear1 = "The greater number of " + num1 + " and " + num2 + "is" + num1;
    console.log(answear1)
  }
  else {
    var answear2 = "The greater number of " + num1 + " and " + num2 + "is" + num2;
    console.log(answear2);
}
}

var numbers = greaterNum(2, 4);

console.log(numbers);
