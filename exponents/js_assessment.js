(function () {}
	
    // Make a namespace `Assessment`.
    if(typeof Assessment === "undefined") {
      window.Assessment = {};
    }

    // write mergeSort(array)
    Assessment.mergeSort = function mergeSort (array) {
      if (array.length <= 1) {
        return array;
      }

      // Slice actually takes floors automatically, but this is more
      // explicit.
      var middle = Math.floor(array.length / 2);
      var left = array.slice(0, middle);
      var right = array.slice(middle);

      return merge(mergeSort(left), mergeSort(right));
    };

    // Note that merge isn't published into the Assessment namespace
    function merge (left, right) {
      var result = [];

      var leftIdx = 0, rightIdx = 0;
      while ((leftIdx < left.length) || (rightIdx < right.length)) {
        if ((rightIdx == right.length) || (left[leftIdx] < right[rightIdx])) {
          result.push(left[leftIdx]);
          leftIdx++;
        } else {
          result.push(right[rightIdx]);
          rightIdx++;
        }
      }

      return result;
    };
	
    // write recursiveExponent(base, power)
    Assessment.recursiveExponent = function recursiveExponent (base, power) {
      if (power === 1) {
        return base;
      }

      return base * recursiveExponent(base, power - 1);
    };

)();