import 'dart:io' show stdin, stdout;

String?
    firstName,
    lastName,
    fullName,
    userSentence;
int?
    number;

main() async {
  print("Enter first name");
  firstName = stdin.readLineSync()!;
  print("Enter last name");
  lastName = stdin.readLineSync()!;
  print("Enter  Number (16)");
  String stringNumber = stdin.readLineSync()!;
  number = int.parse(stringNumber);
  print("Enter sentence ");
  userSentence = stdin.readLineSync()!;

  //task 01 - print hello then name in separate line
  print("#Task 1 (hello and name on separate line) \n  Hello, \n  $firstName.");

  //task 02
  print("\n#Task 02 (hello and name in same line)");
  stdout.write("  Hello, $firstName $lastName.");

  //task 03
  print("\n\n#Task 03 (input the name and print hello, name)\n  hello,$firstName.");

  //task 04
  fullName = "$firstName $lastName";
  print("\n#Task 04 (full name and all cap)");
  stdout.write("  ");
  stdout.write(fullName!.toUpperCase());

  //task 05
  print("\n\n#Task 05 (full name all small letters)");
  stdout.write("  ");
  print(fullName!.toLowerCase());

  //task 06
  print("\n#Task 06 (sentience in reverse)");
  print(userSentence?.split("").reversed.join());

  //task 07
  print("\n#Task 07 (sentience without repeating)");
  print(userSentence?.split(""));

  //task 08
  print("\n#Task 08 (sentience into list )");
  print(userSentence?.split("\n"));

  //task 09
  print("\n#Task 09 (count letters)");
  print(userSentence!.length);

  //task 10
  print("\n#Task 10 (asci table)");
  print(userSentence?.codeUnits);

  //task 11
  print("\n#Task 11 (0 1 -1)");
  print(number?.sign);

  //task 12
  print("\n#Task 12 (render of user input and 6)");
  print(number?.remainder(6));

  //task 13
  print("\n#Task 13 (check if it contain world )");
  print(userSentence?.contains("world"));

  // task 14 : startWith and endWith
  print("\n#Task 14 (startWith and endWith)");
  print(userSentence!.startsWith("amr"));
  print(userSentence!.endsWith("bakr"));
}