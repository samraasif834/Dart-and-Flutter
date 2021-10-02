void main() {
  //ASSIGNMENT 4

//QUESTION 1
//image and file in the repository.

//QUESTION 2
//Passing Argument
  tableNo(5000);

//QUESTION 3
  //passing 2 argument first argument is number from which every element of list has to
  //be divided and second passing thr list.
  List<num> numbers = [2, 4, 6, 8, 9];
  divide(9, numbers);

//QUESTION 4
  //2 lists one for marks and second for names and in function we are passing 2 arguments
  //first argument is marks and second is names
  List<num> marks = [80, 40, 20, 50, 80];
  List<String> names = ["Samra", "Humaira", "Aisha", "Hibba", "Hafsa"];
  marksheet(marks, names);

//QUESTION 5
  //creating object and calling obj with method
  New obj1 = New();
  obj1.first();

//QUESTION 6
  // creating objects and then calling both of them with with respective methods
  //and in print statement printing both the objects values.
  var obj2 = Firstname();
  var obj3 = Lastname();
  obj2.firstName = "Samra";
  obj3.lastName = "Asif";
  print("My Name Is ${obj2.firstName} ${obj3.lastName}");

//QUESTION 7
  //This is constructor and in this we are assigning values to specific variables
  // and printinfo method to print all values.
  Studentinfo obj4 =
      Studentinfo(name: "samra", age: 19, education: "undergraduate");
  obj4.printInfo();

//QUESTION 8
  //This is inheritence we are creating object in class and using methods of child class
  //as well as parent class through extends keyword.
  Child obj5 = Child();
  obj5.firstName = "Samra";
  obj5.lastName = "Asif";
  obj5.intro();
  obj5.info();
  obj5.setheight(5.1);
  obj5.getheight();
  obj5.setweight(55);
  obj5.getweight();
  print(
      "Firstname:${obj5.firstName} \nLastname:${obj5.lastName}\nHeight:${obj5.getheight()}feet\nWeight:${obj5.getweight()}Kg");
}

//QUESTION 2

//passing one parameter of number and then iterating loop from 1-10
//through this function we are printing table.
tableNo(num number) {
  for (var i = 1; i <= 10; i++) {
    print("${number}X$i=${number * i} ");
  }
}

//QUESTION 3
//In this function passing two parameter of number and list and then iterating loop over list
// and then divide every element of list with number we will give through argument and then rounding
//of value and in the end printing the values.

divide(num number, List<num> lst) {
  print(lst);
  for (var j = 0; j < lst.length; j++) {
    var divide = lst[j] / number;
    var roundingOff = num.parse((divide).toStringAsFixed(1));
    print("${[lst[j]]}=${roundingOff}");
  }
}

//QUESTION 4
//In this function also we are passing two paramemters of marks and names both ara list
//then iterating through loops and then divide marks with total then according if conditions
// get expected result.
marksheet(List<num> marks, List<String> names) {
  var total = 100;
  for (var i = 0; i < marks.length; i++) {
    var per = marks[i] / total * 100;
    print("Student Name:${names[i]}\nPercentage:${per}");
    if (per >= 80 || per >= 90) {
      print("Garde:A+");
      print("\n");
    } else if (per >= 70) {
      print("Garde:A");
      print("\n");
    } else if (per >= 60) {
      print("Grade:B");
      print("\n");
    } else if (per >= 50) {
      print("Grade:C");
      print("\n");
    } else if (per >= 40) {
      print("Grade:D");
      print("\n");
    } else {
      print("Grade:F");
      print("\n");
    }
  }
}

//QUESTION 5
//creating class and creating method then calling this method outside the class
class New {
  first() {
    print("Hello I am function");
  }
}

//QUESTION 6
//I have created two class one more firstname and one for lastname and inialize two one variable
//in both classes with late keyword (in future value will be assigned)
class Firstname {
  late String firstName;
}

class Lastname {
  late String lastName;
}

//QUESTION 7
//studentinfo class and initializing 3 variable with late keyword and then creating constructor
// and by this getting values and required keyword null safety and afterwards value will assigned.
class Studentinfo {
  late String name;
  late int age;
  late String education;

  Studentinfo({required this.name, required this.age, required this.education});

  printInfo() {
    print("Name:${name}\nAge:${age}\nEducation:${education}");
  }
}

//QUESTION 8
//create two classes of parent and child and child want to use methods and functions of parent class
// then we use extends keyword through that child can get acess to parent class
class Parent {
  late String firstName;
  late num height;

  void intro() {
    print("Hello I am Parent");
  }

  setheight(num height) {
    this.height = height;
  }

  num getheight() {
    return height;
  }
}

class Child extends Parent {
  late String lastName;
  late num weight;

  void info() {
    print("Hello I am Child");
  }

  setweight(num weight) {
    this.weight = weight;
  }

  num getweight() {
    return weight;
  }
}
