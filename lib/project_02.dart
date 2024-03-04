import 'dart:io';

main() {
  task0601();
}

tasks0201() {
//Write a program to print 'Hello' on screen and then print your name on a separate line
  print("Hello");
  print("Ibrahim");
}

tasks0202() {
  //Write a program to print 'Hello' on screen and then print your name on the same line
  stdout.write("Hello ");
  stdout.write("Ibrahim");
}

tasks0203() {
  //Write a program to read name from user and print hello name
  print("Enter name");
  String? name = stdin.readLineSync();
  print("Hello $name");
}

tasks0204() {
//Take full name of user and make it all capital
  print("Input your full name...");
  String fullName = stdin.readLineSync()!;
  print(fullName.toUpperCase());
}

tasks0205() {
//Take full name of user and make it all small
  print("Input your full name...");
  String fullName = stdin.readLineSync()!;
  print(fullName.toUpperCase());
}

tasks0206() {
//Take sentence from user and make reverse it
  print("Input your sentence...");
  String sentence = stdin.readLineSync()!;
  print(sentence.split(" ").reversed.join(" "));
}

tasks0207() {
//Take sentence from user and make remove repeated words
  print("Input your full sentence...");
  String sentence = stdin.readLineSync()!;
  print(sentence.split(" ").toSet().join(" "));
}

tasks0208() {
//Take sentence from user and convert it to list
  print("Input your full sentence...");
  String sentence = stdin.readLineSync()!;
  print(sentence.split(" ").join("\n"));
}

tasks0209() {
//Take sentence from user and print the number of characters
  print("Input your full sentence...");
  String sentence = stdin.readLineSync()!;
  print(sentence.length);
}

tasks0210() {
  //Take word from user and print the opposites code from the asci table
  print("Input your full sentence...");
  String sentence = stdin.readLineSync()!;
  print(sentence.codeUnits);
}

tasks0211() {
  //make number by yourself and print 0 if the number is zero and 1 if the number is positive and -1 if the number is negative
  print("Input your number (+/-)...");
  int number = int.tryParse(stdin.readLineSync()!) ?? 0;
  print(number.sign);
}

tasks0212() {
  //Print the reminder of the 16 and 6
  print("Input your First number ...");
  int number1 = int.tryParse(stdin.readLineSync()!) ?? 0;
  print("Input your Second number ...");
  int number2 = int.tryParse(stdin.readLineSync()!) ?? 0;
  int remainder = number1 % number2;
  print("The remainder of $number1 divided by $number2 is: $remainder");
}

task0213() {
  //Take sentence from the user and then take word and then print if the word is in the sentence or not
  print("Input your sentence to check if it content 'other' ...");
  String sentence = stdin.readLineSync()!;
  print("The word 'other' is present in the sentence.");
  print(sentence.contains("other"));
}

task0501() {
  int? num1;
  print("Enter the number...");
  num1 = int.tryParse(stdin.readLineSync()!);
  if (num1 == 0) {
    print("don't do that it ain't funny");
  } else {
    print(num1!.isEven ? "its even" : "it's not even, its Odd");
  }
}

task0502() {
  String grade = "";
  int? x;
  print("Enter your grade (0-100): ");
  x = int.tryParse(stdin.readLineSync()!);

  if (x == null) {
    print("Invalid input. Please enter a number.");
  } else if (x > 90) {
    grade = "A";
  } else if (x > 80) {
    grade = "B";
  } else if (x > 70) {
    grade = "C";
  } else if (x > 60) {
    grade = "D";
  } else {
    grade = "F";
  }
  print("Your grade is $grade");
}

task0503() {
  String op = "";
  double? x, y;
  print("Enter your first number...: ");
  x = double.tryParse(stdin.readLineSync()!) ?? 0;

  print("Enter your operation( + - * / )...");
  op = stdin.readLineSync()!;

  print("Enter your second number...");
  y = double.tryParse(stdin.readLineSync()!) ?? 0;

  switch (op) {
    case "+":
      print(x + y);
      break;
    case "-":
      print(x - y);
      break;
    case "*":
      print(x * y);
      break;
    case "/":
      print(y != 0 ? x / y : "Invalid number, can not divide by zero");
      break;
  }
}

task0504() {
  {
    List<String> months = [
      "January",
      "February",
      "March",
      "April",
      "May",
      "June",
      "July",
      "August",
      "September",
      "October",
      "November",
      "December"
    ];
    print("Enter the number of the month 1~12");
    int x = int.tryParse(stdin.readLineSync()!) ?? 0;
    if (x > 0 && x < 13) {
      print(months[x - 1]);
    } else {
      print("invalid number ");
    }
  }
}

task0505() {
  print("enter name:");
  int? number = int.tryParse(stdin.readLineSync()!) ?? 0;

  switch (number) {
    case 1 || 2 || 3:
      print("Summer");
      break;
    case 4 || 5 || 6:
      print("Autumn ");
      break;
    case 7 || 8 || 9:
      print("Winter");
      break;
    default:
      print("Spring");
  }
}

task0601() {
  String? email, password, emailPassWord;
  List<String> dbEmailPassWord = <String>[
    'email@yahoo.com:123456',
    "email@msn.com:123456",
    "email@gmail.com:123456",
    "test@hotmail.com:123456"
  ];
  print("Please enter your name: ");
  email = stdin.readLineSync()?.toLowerCase();
  print("Please enter your password: ");
  password = stdin.readLineSync();
  emailPassWord = ("$email:$password");
  if (dbEmailPassWord.contains(emailPassWord)) {
    print("email & password accepted...");
  } else {
    print("email or password was not correct...");
  }
}

task0602() {
  print(
      "Write a program that calculates the sum of all numbers from start to a given end from the user.\nPlease enter the first number");
  int numb1 = int.tryParse(stdin.readLineSync()!) ?? 0;
  print("Enter the second number");
  int numb2 = int.tryParse(stdin.readLineSync()!) ?? 0;
  int sum = 0;
  if (numb1 >= numb2) {
    int temp = numb1;
    numb1 = numb2;
    numb2 = temp;
    for (; numb1 <= numb2; numb1++) {
      sum += numb1;
    }
    print(sum);
  } else {
    for (; numb1 <= numb2; numb1++) {
      sum += numb1;
    }
    print(sum);
  }
}

task0603() {
  print(
      "Create a program that calculates the factorial of a given non-negative integer n!.\nPlease enter the number");
  int number = int.tryParse(stdin.readLineSync()!) ?? 0;
  if (number <= 0) {
    print("invalid number...");
  } else {
    int factorial = 1;
    for (; number >= 1; number--) {
      factorial *= number;
    }
    print(factorial);
  }
}

task0604() {
  print(
      "Write a program that takes a positive integer as input and outputs its reverse.\ninput the world or numbers...");
  String? x = stdin.readLineSync();
  String r = "";
  for (int i = x!.length - 1; i >= 0; i--) {
    r += x[i];
  }
  print(r);
}

task0605() {
  List<int> x = [];
  String input;

  while (true) {
    stdout.write("Enter a number (or a blank line to stop): ");
    input = stdin.readLineSync()!;

    if (input.isEmpty) {
      break;
    }

    int number = int.parse(input);
    x.add(number);
  }
  int sum = 0;
  for (int i = 0; i < x.length; i++) {
    sum += x[i];
  }
  double ava = (sum / x.length);
  int avaInt = ava.toInt();
  print("The list x contains: $x and tha Average is $avaInt");
}

task0606() {
  List<int> x = [1, 2, 3, 4, 5, 6, 7];
  int sum = 0;
  for (int i = 0; i < x.length; i++) {
    sum += x[i];
  }
  var total = sum / x.length;
  print(total.toInt());
}

task0607() {
  int x = 01;
  while (x <= 10) {
    stdout.write("\n $x - Hello ");
    x++;
  }
  stdout.write("...Finish");
}

task0608() {
  double? finalTemp;
  print(
      "Write a function called convertTemperature from Celsius to fahrenheit \n Enter temp.");
  double temp = double.tryParse(stdin.readLineSync()!) ?? 0;
  print("Enter unit, C or Celsius nor F or Fahrenheit");
  String? unit = stdin.readLineSync()?.toLowerCase();
  if (unit == "c" || unit == "celsius") {
    finalTemp = (temp * 1.8) + 32;
    print("The $temp°C equal to $finalTemp°F");
  } else if (unit == "f" || unit == "fahrenheit"){
    finalTemp = (temp - 32) * 5/9;
    print("The $temp°F equal to $finalTemp°C");
  }else{
    print("invalid unit...");
  }
}
