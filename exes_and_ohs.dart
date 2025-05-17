// Check to see if a string has the same amount of 'x's and 'o's. The method must return a boolean and be case insensitive. The string can contain any char.

// Examples input/output:

// XO("ooxx") => true
// XO("xooxx") => false
// XO("ooxXm") => true
// XO("zpzpzpp") => true // when no 'x' and 'o' is present should return true
// XO("zzoo") => false

bool XO(str) {
  if(str.length ==0)return true;
  int xLength = 0;
  int oLength = 0;
  for(int i =0;i<str.length;i++){
    str[i] == 'x' || str[i] == 'X' ?xLength++:str[i] == 'o' || str[i] == 'O' ?oLength++:null;
  }
 return (xLength==oLength) && (xLength !=0 && oLength !=0);
}

void main(){
  print(XO('abcdefghijklmnopqrstuvwxyz'));
  print(XO('xxxm'));
  print(XO('xxxoo'));
  print(XO('xo'));
  print(XO('XO'));
}