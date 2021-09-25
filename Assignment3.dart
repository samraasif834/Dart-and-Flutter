import 'dart:io';

void main() {
  //Assignment 3

  //QUESTION 1
  var ballList = <String>['bilal', 'ali', 'owais', 'bilal', 'owais'];
  print([
    ...{
      ...ballList
    } //By using spread operator we are creating copy of actual list
    //   //and then converting into sets and in sets duplicate element are not allowed.
  ]);

  // //QUESTION 2
  var list1 = <int>[1, 2, 3, 4, 5, 6, 7]; //list1
  var list2 = <int>[3, 5, 6, 7, 9, 10]; //list2
  list1.removeWhere((e) => list2.contains(
      e)); //In this statement from list1 elements remove element which
  //is present in list 2 and which elements of list2 are as same as present in list1.
  print('List 1:${list1}');

  //QUESTION 3
  var a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  var b = [
    for (var n in a) //using for in loop
      if (n % 2 == 0) n
  ];
  print(b);

//QUESTION 4

  print('Enter Number:'); //input to take number
  var number = (stdin.readLineSync()); //read what is given in input
  var number1 = int.parse(number!); //parsing input to int and ! means conversio
// // from nullable to nonnullable value.
  print('Number: ${number1}'); //printing the number
  int count = 0;
  for (var i = 2; i < number1; i++) {
    if (number1 % i == 0) {
      count++;
      break;
    }
    if (count == 0) {
      print('It is prime number');
    } else {
      print('Not a prime number');
    }
  }
  //QUESTION 5
  var num = 7; //table of 5
  for (var i = 1; i <= 15; i++) {
    print("Table Of 5 \n");
    print('${num}X${i}=${num * i}');
  }

//QUESTION 6
  var fruits = ['apple', 'banana', 'mango', 'orange', 'strawberry'];
  for (var j = 0; j < fruits.length; j++) {
    //loop for printing whole list
    print('List Of Fruits:${fruits[j]}');
  }

//QUESTION 7
  for (var i = 1; i <= 100; i++) {
    //loop for getting values from 1-100
    if (i % 5 == 0) {
      //checking these values are divisible by 5 or not.
      print(i);
    }
  }

//QUESTION 8
  var celsiusTemp = 49.9; //celsius temp value
  var farenheitFormula = ((celsiusTemp * 9 / 5) + 32); //formula for converting
  var roundOff = double.parse(
      (farenheitFormula).toStringAsFixed(2)); //rounding off to 2 decimal place.
  print('Celsius To Farenheit:${roundOff}');
  var farenhiteTemp = 98.2; //farenhite temp value
  var celsiusFormula = ((farenhiteTemp - 32) * 5 / 9); //formula for converting
  var roundOff1 = double.parse(
      (celsiusFormula).toStringAsFixed(2)); //rounding off to 2 decimal place.
  print('Farenheit To Celsius:${roundOff1}');

//QUESTION 9
  print('Enter first Number:'); //input to take number1
  var numberFirst = (stdin.readLineSync()); //read what is given in input
  var num1 =
      int.parse(numberFirst!); //parsing input to int and ! means conversio
// from nullable to nonnullable value.
  print('Number: ${num1}'); //printing the number

  print('Enter Second Number:'); //input to take number2
  var numberSecond = (stdin.readLineSync()); //read what is given in input
  var number2 =
      int.parse(numberSecond!); //parsing input to int and ! means conversio
// from nullable to nonnullable value.
  print('Number: ${number2}'); //printing the number

  print('Enter sign'); //taking input
  var sign = stdin.readLineSync(); //reading input
  print('Operator:${sign}'); //printing input getting from user

  if (sign == '+') {
    print('Addition:${num1 + number2}'); // adding both values
  } else if (sign == '-') {
    print('Subraction:${num1 - number2}'); //subracting both values
  } else if (sign == '*') {
    print('Multiplication:${num1 * number2}'); //multiplying both values
  } else if (sign == '/') {
    print('Divide:${num1 / number2}'); //dividing both values
  } else if (sign == '%') {
    print('Modulus:${num1 % number2}'); //modulud of both value
  }
//QUESTION 10
  print('Enter letter'); //taking input
  var vowel = stdin.readLineSync(); //reading input
  print('Operator:${vowel}'); //printing input getting from user

  if (vowel == 'a' ||
      vowel == 'e' ||
      vowel == 'i' ||
      vowel == 'o' ||
      vowel == 'u') {
    // multiple conditions
    //in one clause.
    print('true');
  } else {
    print('false');
  }
}
