// In this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string and you must return an array of strings where an uppercase letter is a person standing up.

// Rules
// 1.  The input string will always consist of lowercase letters and spaces, but may be empty, in which case you must return an empty array. 2.  If the character in the string is whitespace then pass over it as if it was an empty seat

// Examples
// "hello" => ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
// " s p a c e s " => [ " S p a c e s ", " s P a c e s ", " s p A c e s ", " s p a C e s ", " s p a c E s ", " s p a c e S "]



List<String> wave(String str) {
  List<String> output=[];
  for(int i =0;i<str.length;i++){
    String newElement = "";
    if(str[i]==' ')continue;
    for(int j = 0;j<str.length;j++){
      if(j!=i){
      newElement+=str[j];
      }else{
        newElement+=str[j].toUpperCase();
      }
      
    }
    output.add(newElement);
  }
  return output;
}

void main(){
 print( wave('a       b    '));
}