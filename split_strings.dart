// Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').

// Examples:

// * 'abc' =>  ['ab', 'c_']
// * 'abcdef' => ['ab', 'cd', 'ef']

List<String> solution(String s) {
  List<String> output = [];
  int i = 0;
  for (; i < s.length; i = i + 2) {
    if (i == s.length-1) {
      output.add(s[s.length - 1] + '_');
      return output;
    }
    output.add("${s[i]}${s[i + 1]}");
  }

  return output;
}

void main() {
  print(solution('abcd'));
}
