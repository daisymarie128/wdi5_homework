// var lines = [
//   {N: ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th'],
//    L: ['8th','6th','Union Square','3rd','1st'],
//    SIX: ['Grand Central','33rd','28th','23rd','Union Square','Astor Place']
//  }
// ]


// var N = ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th'];
// var L = ['8th','6th','Union Square','3rd','1st'];
// var SIX = ['Grand Central','33rd','28th','23rd','Union Square','Astor Place'];


var lines ={
 N:{
  "Times Square": 1,
  "34th": 2,
  "28th": 3,
  "23rd": 4,
  "Union Square": 5,
  "8th": 6,
  "stationNames": ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']
  },

 L:{
  "8th": 3,
  "6th": 4,
  "Union Square": 5,
  "3rd": 6,
  "1st": 7,
  "stationNames": ['8th','6th','Union Square','3rd','1st']
  },


 SIX: {
  "Grand Central": 1,
  "33rd": 2,
  "28th": 3,
  "23rd": 4,
  "Union Square": 5,
  "Astor Place": 6,
  "stationNames": ['Grand Central','33rd','28th','23rd','Union Square','Astor Place']
  }
}

var startingLine = prompt("Are you on N, L or SIX");
var startingStation = prompt("What station are you at?");

var endingLine = prompt("Are you going to line N, L or SIX");
var endingStation = prompt("What station are you going to?");

var station = lines[startingLine][startingStation];
var station2 = lines[endingLine][endingStation];
var intersect = "Union Square";

var stationHolder = "stationNames"

var findNames = lines[startingLine][stationHolder];
var findNames2 = lines[endingLine][stationHolder];

var findIndex = findNames.indexOf(startingStation);
var findIndex2 = findNames2.indexOf(endingStation);
var findIndexIntersect = findNames.indexOf("Union Square");

var findSpecific = findNames.splice(parseInt(findIndex), parseInt(findIndexIntersect));
var findSpecific2 = findNames2.splice(parseInt(findIndex2), parseInt(findIndexIntersect));

var listStops = [findSpecific + " Union Square " + findSpecific2]


// list = lines[line1.to_sym][current_location]..lines[line2.to_sym][destination]

var stationFinder = function(sS, eS){
  var stops = eS - sS;
  if (stops < 0){
    console.log(stops + sS);
  } else{
    console.log("There are " + stops + " stops till you get to your crappy destination");
  }
  }
var printStationNames = function(stations){
  console.log(stations)
}

stationFinder(parseInt(station), parseInt(station2));
printStationNames(listStops);







// var stationFinder = function(sS, eS){
//   var answer = 0;
//   if (sL == "N"){
//     answer = sS - eS;
//   } else{
//     console.log("wrong");
//   }
//   console.log(answer);
// }


// var stationFinder = function(sL, sS, eL, eS){
//   if (sL = "N"){
//   for (var i = 0; i < N.length; i++) {
//   var intersect = "Union Square";
// }

