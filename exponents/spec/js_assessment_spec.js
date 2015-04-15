describe("recursiveExponent", function() {
  it("should recursively calculate 2^3==8", function() {
    expect(Assessment.recursiveExponent(2, 3)).toBe(8);
  });

  it("should recursively calculate 3^3==27", function() {
    expect(Assessment.recursiveExponent(3, 3)).toBe(27);
  });
});


