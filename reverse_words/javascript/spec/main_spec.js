describe("Reverse Words", function() {
  // it("should recursively calculate 2^3==8", function() {
  //   expect(Assessment.recursiveExponent(2, 3)).toBe(8);
  // });

  // it("should recursively calculate 3^3==27", function() {
  //   expect(Assessment.recursiveExponent(3, 3)).toBe(27);
  // });

  it("swaps characters around", function() {
  	var str = "abc";
  	var answer = "cba";

  	expect(ReverseWords.swap(str, 0 ,2)).toBe(answer);
  });

  it("reverses a word", function() {
  	var str = "abcd";
  	var answer = "dcba";

  	expect(ReverseWords.reverseStr(str)).toBe(answer);
  });

  it("reverses a portion of the word 1", function() {
		var str = "abcdef"
		var answer = "abcfed"


  	expect(ReverseWords.reverseStr2(str, 3, 5)).toBe(answer);
  });

  it("reverses a portion of the word 2", function() {
		var str = "abcdef"
		var answer = "aedcbf"


  	expect(ReverseWords.reverseStr2(str, 1, 4)).toBe(answer);
  });

  it("reverses a sentence", function() {
		var str = "One Two Three"
		var answer = "Three Two One"


  	expect(ReverseWords.reverseSentence(str)).toBe(answer);
  });  


});


