// This time no story, no theory. The examples below show you how to write function accum:

// Examples:
// accum("abcd") -> "A-Bb-Ccc-Dddd"
// accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
// accum("cwAt") -> "C-Ww-Aaa-Tttt"
// The parameter of accum is a string which includes only letters from a..z and A..Z.

String accum(String str) {
  String output = "";
  for (int i = 0; i < str.length; i++) {
    output += str[i].toUpperCase();
    for (int j = 0; j < i; j++) {
      output += str[i].toLowerCase();
    }
    output = i == str.length - 1 ? output : output + '-';
  }
  return output;
}
void main() {
  print(accum("ZpglnRxqenU"));
}
