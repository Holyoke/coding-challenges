(function () {
  // Make a namespace `Reverse Words`.

  if (typeof ReverseWords === "undefined"){
  	window.ReverseWords = {};
  }

  ReverseWords.swap = function (str, i, j) {
    result = str.split("");

    var tmp = result[i];
    result[i] = result[j];
    result[j] = tmp;

    return result.join("");
  };

  ReverseWords.reverseStr = function (str) {
    var result = "";
    var i;
    for(i = str.length; i > 0; i--){
      result += str[i - 1];
    }

    return result;
  };



})();
