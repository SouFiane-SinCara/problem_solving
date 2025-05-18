// You will be given a list of strings. You must sort it alphabetically (case-sensitive, and based on the ASCII values of the chars) and then return the first value.

// The returned value must be a string, and have "***" between each of its letters.

// You should not remove or add elements from/to the array.

String twoSort(List<String> arr) {
  //sorting of array
  for (int i = 0; i < arr.length; i++) {
    for (int j = i; j < arr.length; j++) {
      if (arr[i].codeUnitAt(0) > arr[j].codeUnitAt(0)) {
        //swapping the values
        String temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
      }
    }
  }
  // preparing the output
  String output = "";

  for (int i = 0; i < arr[0].length; i++) {
    arr[0].length - 1 == i
        ? output += arr[0][i]
        : output = output + arr[0][i] + "***";
  }

  return output;
}

void main() {
  print(twoSort(
      ["lets", "talk", "about", "javascript", "the", "best", "language"]));
}
