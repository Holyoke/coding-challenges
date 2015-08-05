"use strict"

function createElement(content, tag, props) {

  var tag = tag || "div";
  var element = React.createElement(tag, props, content);
  return element;
}

function createUnorderedList(list) {
//   create a react unordered list with children list items created form the list argument
  var items = list.map(function(item, idx){
    var element = createElement(item, "li", {key: idx});
    return element;
  });
  return createElement(items, "ul");
}

let names = ['Anthony','Mark'];
let actual = React.renderToStaticMarkup(createUnorderedList(names));
console.log(actual);
