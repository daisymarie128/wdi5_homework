var page = document.getElementsByTagName('body')[0];
var h1 = document.getElementsByTagName('h1')[0];
var nickname = document.getElementById('nickname');
var favourites = document.getElementById('favorites');
var hometown = document.getElementById('hometown');
var li = document.getElementsByTagName('li');



console.log(nickname);
nickname.innerHTML = 'Crapasourous';
favourites.innerHTML = 'crap, crap and more crap';
hometown.innerHTML = 'Crappapalooza';

for (var i =0; i < li.length; i++){
  li[i].className = 'listitem';
}

h1.style.fontFamily = "Arial, sans-serif";
console.log(page);
css = document.createElement('style');
css.type = 'text/css';
styles = " .listitem { color: red; }";


img = document.createElement('img');
img.src = 'http://placekitten.com/325/325';

page.appendChild(img);

css.appendChild(document.createTextNode(styles));
page.appendChild(css);