(function () {
  // Make a namespace `Reverse Words`.

  if (typeof ReverseWords === "undefined"){
  	window.ReverseWords = {};
  }

  ReverseWords.swap = function (str, i, j) {
    var result = str.split("");

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

  ReverseWords.reverseStr2 = function (str, i, j) {
    var left, mid, right;

    left = str.slice(0, i);
    mid = this.reverseStr(str.slice(i, j + 1));
    right = str.slice(j + 1, str.length);

    return left+mid+right;
  };

  ReverseWords.reverseSentence = function (str) {
    var result = "";

    var back = str.length;
    back--;

    var probe = back; 
    var sub; 

    for(back; back >= 0; back--){
      if (str[back] === " " ) {
        sub = str.slice(back + 1, probe + 1);
        result += sub + " ";
        probe = back;
      }

      if (back === 0) {
        result = result.slice(0, result.length - 1)
        result += str.slice(back, probe);
      }
    }
    return result;
  };



})();
