// If　a = 1, b = 2, c = 3 ... z = 26

// Then l + o + v + e = 54

// and f + r + i + e + n + d + s + h + i + p = 108

// So friendship is twice as strong as love :-)

// Your task is to write a function which calculates the value of a word based off the sum of the alphabet positions of its characters.

// The input will always be made of only lowercase letters and will never be empty.

int wordsToMarks(String s) {
  int output=0;
  for(int i =0;i<s.length;i++){
   output += s[i].codeUnits.first -96;
  }
  return output;
}


void main(){
  print(wordsToMarks('friendship'));
}
