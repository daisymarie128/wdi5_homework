var kitten = document.getElementsByClassName('imager')[0];
var body = document.getElementsByTagName('body')[0];

var walkForward = true;

kitten.style.position = 'absolute';
kitten.style.left = '0px';
function watchKittyWalk() {
  var rect = body.getBoundingClientRect();
  x = rect.right;
  var oldLeft = parseInt(kitten.style.left);
  if (walkForward && (oldLeft > (x-kitten.width))) {
    walkForward = false;
    kitten.className === "imager-change";
  }
  if (!walkForward && (oldLeft <= 0)) {
    walkForward = true;
  }
  if (walkForward) {
    kitten.style.left = (oldLeft + 10) + 'px';
  } else {
    kitten.style.left = (oldLeft - 10) + 'px';
  }
}
window.setInterval(watchKittyWalk, 40);






// $(function() {
//     $("#bt").click(function() {
//         $(".box").toggleClass("box-change");
//     });
// });


// console.log(rect)


// var img = document.getElementsByTagName('img')[0];
// img.style.left = '0px';
// var walkForwards = true;
// function catWalk() {
//   var currentLeft = parseInt(img.style.left);

//   if (walkForwards && (currentLeft > (window.innerWidth-img.width))) {
//     walkForwards = false;
//   }
//   if (!walkForwards && (currentLeft <= 0)) {
//     walkForwards = true;
//   }

//   if (walkForwards) {
//     img.style.left = (currentLeft + 10) + 'px';
//   } else {
//     img.style.left = (currentLeft - 10) + 'px';
//   }
// }
// window.setInterval(catWalk, 50);






// var kitten = document.getElementsByTagName('image')[0];
// var body = document.getElementsByTagName('body')[0];

// var walkForward = true;

// kitten.style.position = 'absolute';
// kitten.style.left = '0px';
// function watchKittyWalk() {
//   var rect = body.getBoundingClientRect();
//   x = rect.right;
//   var oldLeft = parseInt(kitten.style.left);
//   var newLeft = oldLeft + 10;
//   kitten.style.left = newLeft + 'px';
//     if (newLeft > (x-kitten.width)) {
//     kitten.style.left = '0px';
//     // kitten.style.x = '0px';
//   }
// }
// window.setInterval(watchKittyWalk, 40);



// console.log(rect)