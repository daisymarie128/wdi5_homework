// var currentAge = 22;
// var maxAge = 30;
// var amountperDay = 300;

// var amountAge = maxAge - currentAge;
// var amountTotal = amountAge * amountperDay;
// var totalAmount = "You will need " + amountTotal + " to last you until the ripe old age of " + maxAge;

// console.log(totalAmount);


var ageSnack = function (currentAge, maxAge, amountperDay){
  var amountAge = maxAge - currentAge;
  var amountTotal = amountAge * amountperDay;
  var totalAmount = "You will need " + amountTotal + " to last you until the ripe old age of " + maxAge;
  console.log(totalAmount)
}

var snack1 = ageSnack(22, 30, 300);
var snack1 = ageSnack(22, 31, 300);
var snack1 = ageSnack(22, 32, 300);

console.log(snack1);