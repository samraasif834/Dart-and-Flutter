import 'dart:io';

void main() {
  //  ASSIGNMENT #2

//QUESTION #1:
  var num1 = 25;
  var num2 = 5;
  var num3 = 3;
  var num4 = 9;

  //Arithmetic Operators
  var add = num1 + num2;
  print("Addition operator:$add");
  var subract = num1 - num2;
  print("Subraction Operator:$subract");
  var multiply = num1 * num2;
  print("Multiply Operator:$multiply");
  var divide = num1 / num2;
  print("Division Operator:$divide");
  var divideInt = num1 ~/ num2;
  print("Divide and return int value:$divideInt");
  var modulus = num1 % num2;
  print("Modulus Operator:$modulus");
  var preIncreament = ++num1;
  print("Pre Increament:$preIncreament");
  var postIncreament = num1++;
  print("Post Increament:$postIncreament");
  var preDecreament = --num1;
  print("Pre Decreament:$preDecreament");
  var postDecreament = num1--;
  print("Post Decreament:$postDecreament");

//Equality And Relational Operators
  var greaterThan = num1 > num2;
  print("Greater Than Operator:$greaterThan");
  var lessThan = num1 < num2;
  print("Less Than Operator:$lessThan");
  var greaterThanequalto = num1 >= num2;
  print("Greater Than Equal To Operator:$greaterThanequalto");
  var lessThanequalto = num1 <= num2;
  print("less Than Equal To Operator:$lessThanequalto");
  var equalTo = num1 == num2;
  print("Equality Operator:$equalTo");
  var notEqual = num1 != num2;
  print("Not Equal Operator:$notEqual");

// Logical Operators
  var and = (num1 > num3) && (num2 < num4);
  print("And Operator:$and");
  var or = (num1 > num3) || (num2 < num4);
  print("OR Operator:$or");
  var not = !(num1 > num3);
  print("Not Operator:$not");

// QUESTION #2:
  var a = 2; //first variable
  var b = 1; //Second variable
  var result = --a -
      --b +
      ++b +
      b--; //expression of post and pre increament and decreament
  print("Expression Result Is: ${result}");

//Output Stages
// var c = --a; //This is pre decreament and value of "a" is 2 but after pre decreament a value become "1" and then store in "a"
// var d=--a - --b; //After pre decreament in "a" the value of a is 1 and in b there is pre decreament
//value of b is 1 but after pre decreament value become 0 the overall value become "1"
// var e=--a - --b + ++b; // now the value of is 1 and value of b is 1 now there is pre increament in "b"
// and thn value increase by 1 and the overall expression vlaue is "2"
// var f=--a - --b + ++b +b--; // value of "--a" is 1
//value of "--b" is "1"
// value of "++b" is "2"
// then "b--" this means post decremennt and the vlaue of "b--" is 1
//--a - --b + ++b + b-- =  1-0+1+1=3

  //QUESTION 3:

  num oneTicket = 600; //price of one ticket
  num costOf5tickets = oneTicket * 5; //want to find price of 5 ticket
  //so we multiple 600*5 to get price of 5 ticket
  print("The Cost Of 5 Ticket Is :${costOf5tickets}Rs");

// //QUESTION4
  List<int> list1 = [1, 2, 3, 4, 5, 6, 7]; //list1
  List<int> list2 = [3, 5, 6, 7, 9, 10]; //list2
  list1.removeWhere((e) => list2.contains(
      e)); //remove element from list1 which are in common with list2 and
//countains keyword use for pattern matching and removehere method will remove element according to statement.
  print("List:${list1}");

//QUESTION 5
//? means :nullable By putting this ? to
// we can  say this variable is null because dart assume that
//that varaiables never cant be null. E.g Name? in this statement name value can be null because by default dart
//dont take null value.

//?? means check if value is null like if have String a = b ?? 'Samra' this means a=b and if B is null then
// value samra will be assign to "a"

//QUESTION 6
//Num:means it can take whole value as well as decimal value
//Eg num no1=4; or num no2=0.55;
//Int:In int we can give whole values like E.g int num1=4;
//Double:in double we can give decimal walues as well as whole values.
//E.g:double num1=0.555;double num1=55;
//String:String is sequence of character
//E.g String name="samra";
//Booleans:booleans check condiions and return either true or false.
//Eg if(4>3)=> it will return true
//List:To store multiple values of single data type or different
//data type E.g List <String> list1=["samra","humaira"];
//Map:They are like in key value pair with curly brackets
//E.g {"name":"samra"} first is key and second is its value.

  //QUESTION 7

  List<num> tableOf7 = [ 7, 14,21,28,35,42,49,56,63,70]; //assigning 7 table values as keys
  List<num> tenCounter = [1,2,3,4,5,6,7,8,9,10]; //numbers from 1-10 as values.
  var data = Map.fromIterables(
      tenCounter, tableOf7); //fromiterables method use to pair key and values
  print("Table Of 7:${data}");

//QUESTION 8:

  print('Enter Your Password'); //taking input
  var userPassword = stdin.readLineSync(); //reading input
  print('Your Password ${userPassword}'); //printing input getting from user
  var correctPassword = 'samraasif2542'; // store correct password

  if (userPassword == null) {
    //checking condition if userpassword value is null or not.
    print('please enter your password');
  } else if (userPassword == correctPassword) {
    // to check userpassword is equal to correct password or not
    print('you have Enter correct Passowrd !!');
  } else {
    print(
        'incorrect password'); // if both condition get false then else will print.
  }

//QUESTION 9
  var studentNames = ["Samra", "Humaira", "Hibba"]; //student name list
  var studentNumbers = [300, 200, 400]; //student score list
  var total = 500; //total marks of each student

  print("Student#1:");
  var studentPercentage1 =
      (studentNumbers[0] / total) * 100; //percentage for 1st student
  double per1 =
      (studentPercentage1).roundToDouble(); //rounding off percentage value
  print(
      "Student Name:${studentNames[0]}\nScore Is :${studentNumbers[0]} \nPercentage Is: ${per1}%");

  print("------------------- \n");

  print("Student#2:");
  var studentPercentage2 =
      (studentNumbers[1] / total) * 100; //percentage for 2nd student
  double per2 =
      (studentPercentage2).roundToDouble(); //rounding off percentage value
  print(
      "Student Name:${studentNames[1]}\nScore Is :${studentNumbers[1]} \nPercentage Is: ${per2}%");

  print("------------------- \n");

  print("Student#3:");
  var studentPercentage3 =
      (studentNumbers[2] / total) * 100; //percentage for 3rd student
  double per3 =
      (studentPercentage2).roundToDouble(); //rounding off percentage value

  print(
      "Student Name:${studentNames[2]}\nScore Is :${studentNumbers[2]} \nPercentage Is: ${per3}%");

//QUESTION 11
  String cityName = "Hyderabad"; //Orginal String

  String replace = cityName.replaceAll(
      "Hyder", "Islam"); //replace method to replace hyder to Islam
  print(replace);

//QUESTION 12
  String customerName = "Samra Asif"; //customerName
  String currentMonth = "Feburary"; //currentMonth
  print("K-Electric bill: \n");

  double numberOfunits = 150.595; //numberOfunits
  numberOfunits = double.parse((numberOfunits)
      .toStringAsFixed(2)); //rounding off value to 2 decimal place
  print(numberOfunits);

  double chargesperunit = 200.547; //chargesperunit
  chargesperunit = double.parse((chargesperunit)
      .toStringAsFixed(2)); //rounding off value to 2 decimal place
  print(chargesperunit);

  double latePaymentsurcharge = 1000; //latePaymentsurcharge

  var netAmountpayable =
      (numberOfunits * chargesperunit); //calculating netamountpayable
  netAmountpayable = double.parse((netAmountpayable)
      .toStringAsFixed(2)); //rounding off value to 2 decimal place
  print(netAmountpayable);

  var grossAmountpayable = (netAmountpayable +
      latePaymentsurcharge); //calculating grossamountpayable
  grossAmountpayable = double.parse((grossAmountpayable)
      .toStringAsFixed(2)); //rounding off value to 2 decimal place
  print(grossAmountpayable);

  print(
      "-Customer Name:${customerName} \n-Current Month:${currentMonth}\n-NumberOfUnits:${numberOfunits}\n-ChargesperUnit:${chargesperunit}\n-LatePaymentSurcharge:${latePaymentsurcharge}\n-NetAmountPayable(WithinDueDate):${netAmountpayable}\n-GrossAmountPayable(AfterDueDate):${grossAmountpayable}");
// print All user values

//QUESTION 13
  print('Enter Current Date:'); //input to take current date
  var Date = (stdin.readLineSync()); //read what is given in input
  var currentDate =
      int.parse(Date!); //parsing input to int and ! means conversio
// from nullable to nonnullable value.
  print('Current Date: ${currentDate}'); //printing the date
  if (currentDate < 16) {
    //if condition to check date is less than 16 or not
    print("First Fifteen days of month");
  } else {
    print("Last days of month"); //else statement if (if) statement get false.
  }
}
