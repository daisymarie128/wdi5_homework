// var yearCurrent = 2014;
// var birthYear = 1991;

// var ageGenerator = yearCurrent - birthYear;
// var age2 = ageGenerator - 1;

// var replyAge = "They are either " + ageGenerator + " or " + age2;

// console.log(replyAge);

// Call the function three times with different sets of values.
// Bonus: Figure out how to get the current year in JavaScript instead of passing it in.


var theDate = new Date();
var thisYear = theDate.getFullYear();

var findYear = function (currentYear, birthYear){
  var result1 = currentYear - birthYear;
  var result2 = result1 -1;
  var result = "They are either " + result1 + " or " + result2;
  console.log(result);
}

var theirAge = findYear(thisYear, 1991);
var theirAge = findYear(thisYear, 1990);
var theirAge = findYear(thisYear, 1989);

console.log(theirAge);