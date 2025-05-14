List<int> countPositivesSumNegatives(List<int>? input) {
  if (input == null) {
    return [];
  }
  int positiveOutput = 0;
  int negativeOutput = 0;
  for (int i = 0; i < input.length; i++) {
    input[i] > 0
        ? positiveOutput++
        : input[i] < 0
            ? negativeOutput += input[i]
            : null;
  }
  return [positiveOutput, negativeOutput];
}

void main() {
  print(countPositivesSumNegatives(
      [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]));
}
