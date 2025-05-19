// Output
// In mathematics, a Diophantine equation is a polynomial equation, usually with two or more unknowns, such that only the integer solutions are sought or studied.

// In this kata we want to find all integers x, y (x >= 0, y >= 0) solutions of a diophantine equation of the form:

// x
// 2
// −
// 4
// y
// 2
// =
// n
// x
// 2
//  −4y
// 2
//  =n

// (where the unknowns are x and y; and n is a given positive number) in decreasing order of the positive
// x
// i
// x
// i
// ​
//  .

// If there is no solution return [] or "[]" or "". (See "RUN SAMPLE TESTS" for examples of returns).

// Examples:
// 90005 --> [[45003, 22501], [9003, 4499], [981, 467], [309, 37]]
// 90002 --> []

List<List<int>> solEqua(n) {
  List<List<int>> output = [];
  for (int i = n - 1; i >= 0; i--) {
    for (int j = n - 1; j >= 0; j--) {
      if ((i - (2 * j)) * (i + (2 * j)) == n) {
        output.add([i, j]);
      }
    }
  }
  return output;
}

void main() {
  print(solEqua(5));
}
