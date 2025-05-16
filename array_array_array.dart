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
