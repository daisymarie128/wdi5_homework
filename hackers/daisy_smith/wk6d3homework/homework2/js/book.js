var body = document.getElementsByTagName('body')[0];

var books = [
  {title: 'The Design of EveryDay Things',
   author: 'Don Norman',
   alreadyRead: false
  },
  {title: 'The Most Human Human',
  author: 'Brian Christian',
  alreadyRead: true
  }];


for (var i =0; i < books.length; i++){
  var ul = document.createElement('ul');
  var li = document.createElement('li');
  var p = document.createElement('p');
  p.innerHTML = books[i].title + " " + books[i].author;
  body.appendChild(ul);
  ul.appendChild(li);
  li.appendChild(p);
};


  img = document.createElement('img');
  img.src = 'http://placekitten.com/325/325';

