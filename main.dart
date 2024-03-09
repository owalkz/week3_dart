import 'dart:io';

void main() {
  int num = getInt();
  if (num > 10) {
    print("Your number is greater than 10");
  } else if (num < 10) {
    print("Your number is less than 10");
  } else {
    print("Your number is equal to 10");
  }
}

int getInt() {
  while (true) {
    try {
      print("Enter a number: ");
      int? num = int.parse(stdin.readLineSync()!);
      return num;
    } catch (FormatException) {
      print("Please enter a number!");
    }
  }
}
