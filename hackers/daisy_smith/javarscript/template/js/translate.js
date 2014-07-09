var helloWorld = function(word){
  if ("es"){
    return "Saluton Mondo";
  }
  else if ("de"){
    return "Hallo Welt";
  }
  else if ("en"){
    return "Hello World";
  }
}

var language = helloWorld('es');
var language = helloWorld('de');
var language = helloWorld('en');

console.log(language);