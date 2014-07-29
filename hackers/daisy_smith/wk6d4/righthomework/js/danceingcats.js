
var startButton = document.getElementById('start-button');
var speedButton = document.getElementById('speed-button');
var stopButton = document.getElementById('stop-button');
// var kitten = document.getElementsByClassName('im')[0];
// var body = document.getElementsByTagName('body')[0];

var movePixels = 1;
var delayMs = 50;
var speedMs = delayMs + 10;
var stopMs = 0;
var catTimer = null;

function crap() {
  var crappy = document.getElementsByTagName('img')[1];
  crappy.style.left = '2000px';
}

function catWalk() {
  var kitten = document.getElementsByTagName('img')[0];
  var currentLeft = parseInt(kitten.style.left);
  kitten.style.left = (currentLeft + movePixels) + 'px';
  if (currentLeft > (window.innerWidth-kitten.width)) {
    kitten.style.left = '0px';
  };
};
function startCatWalk() {
  catTimer = window.setInterval(catWalk, delayMs);
};

function speedCatWalk() {
  catTimer = window.setInterval(catWalk, speedMs);
};

function stopCatWalk() {
  window.clearTimeout(catTimer);
};

startButton.addEventListener('click', startCatWalk);

speedButton.addEventListener('click', speedCatWalk);

stopButton.addEventListener('click', stopCatWalk);

// var rect = body.getBoundingClientRect();
//   x = rect.right;
//   var oldLeft = parseInt(kitten.style.left);
//   if (walkForward && (oldLeft > (x-kitten.width))) {
//     walkForward = false;
//     kitten.className === "imager-change";
//   }
//   if (!walkForward && (oldLeft <= 0)) {
//     walkForward = true;
//   }
//   if (walkForward) {
//     kitten.style.left = (oldLeft + 10) + 'px';
//   } else {
//     kitten.style.left = (oldLeft - 10) + 'px';
//   }
// }