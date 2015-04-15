(function () {
  // Make a namespace `Assessment`.

  if (typeof Assessment === "undefined"){
  	window.Assessment = {};
  }

  Assessment.iterativeExponent = function (a, b){
  	var base = a;
  	while ( b > 1) {
  		a = a*base;
  		b--;
  	}
  	return a;
  };

  Assessment.recursiveExponent = function (a, b){
  	if (b === 1) {
  		return a;
  	}
  	return a * this.recursiveExponent(a, (b - 1));
  };
})();
