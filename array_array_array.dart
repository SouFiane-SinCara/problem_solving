
// You are given an initial 2-value array (x). You will use this to calculate a score.

// If both values in (x) are numbers, the score is the sum of the two. If only one is a number, the score is that number. If neither is a number, return 'Void!'.

// Once you have your score, you must return an array of arrays. Each sub array will be the same as (x) and the number of sub arrays should be equal to the score.

// For example:

// if (x) == ['a', 3] you should return [['a', 3], ['a', 3], ['a', 3]].
explode(List arr) {
  int score = 0;
  if (arr[0] is num && arr[1] is num) {
    score = arr[0] + arr[1];
  } else if (arr[0] is! num && arr[1] is! num) {
    return 'Void!';
  } else {
    arr[0] is num ? score = arr[0] : score = arr[1];
  }
  List<List> output =[];
  for(int i =0;i<score;i++){
    output.add(arr);
  }
  return output;
  
}
void main() {
  print(explode(['a', 3]));
}
