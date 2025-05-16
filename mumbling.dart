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
