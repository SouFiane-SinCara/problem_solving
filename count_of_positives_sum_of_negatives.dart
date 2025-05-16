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
