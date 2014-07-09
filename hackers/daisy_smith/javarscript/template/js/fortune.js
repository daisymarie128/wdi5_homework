
 // var kidCount =  27;
 // var partnerName = 'Frank';
 // var geoLocation = 'Woop Woop';
 // var jobTitle = 'unemployed';

 // var lifeStory = "You will be a " + jobTitle + " ,living in " + geoLocation + " married to " + partnerName + " with " + kidCount + " children ";

 //                  console.log(lifeStory);

var whatsMyForTune = function (kidCount, partnerName, geoLocation, jobTitle){
  var lifeStory = "You will be a " + jobTitle + " ,living in " + geoLocation + " married to " + partnerName + " with " + kidCount + " children ";
  console.log(lifeStory);
}

var myFortune = whatsMyForTune(27, 'Frank', 'Woop woop', 'unemployed');
var myFortune = whatsMyForTune(50, 'George', 'Woop woop', 'unemployed');
var myFortune = whatsMyForTune(100, 'George', 'Woop woop', 'unemployed');

console.log(myFortune);