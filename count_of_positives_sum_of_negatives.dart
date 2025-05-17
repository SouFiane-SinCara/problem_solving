// Given an array of integers.

// Return an array, where the first element is the count of positives numbers and the second element is sum of negative numbers. 0 is neither positive nor negative.

// If the input is an empty array or is null, return an empty array.

// Example
// For input [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15], you should return [10, -65].

List<int> countPositivesSumNegatives(List<int>? input) {
  if(input == null){
    return [];
  }
  int positiveOutput=0;
  int negativeOutput=0;
  for(int i =0; i<input.length;i++){
    input[i]>0 ? positiveOutput++ : input[i]<0 ? negativeOutput += input[i]:null;
    
  }
  print([positiveOutput,negativeOutput]);
  return positiveOutput  ==0 && negativeOutput ==0  ?[]: [positiveOutput,negativeOutput];
}
void main() {
  print(countPositivesSumNegatives(
      [0,0]));
}
