void main() {
  num maths = 90; //marks of sub1
  num english = 95.5; //marks of sub2
  num science = 80; //marks of sub3
  num islamiat = 95; //marks of sub4
  num urdu = 88.55; //marks of sub5

  num totalOfsubjects = 500; //total of all subjects
  num totalMarksobtain = (maths) +
      (english) +
      (science) +
      (islamiat) +
      (urdu); //marks obtain by student
  double percentage = (totalMarksobtain / totalOfsubjects) *
      (100); //percentage obtain by student
  double per2 =
      percentage.roundToDouble(); // rounding off the percentage value.
  print(
      "Total Marks Obatined By Student:${totalMarksobtain}"); // printing marks obtain by student
  print(
      "Percentage Obtained By Student:${per2}%"); //printing percentage obtain by student

// If and else-if conditions are for checking the percentage according to given criteria and print result according
// conditions

  if (percentage >= 80) {
    print("Congratz you got A+: ${per2}%");
  } else if (percentage >= 70) {
    print("Contgratz you got A : ${per2}%");
  } else if (percentage >= 60) {
    print("Avergae Not That Bad You Got B Work Hard In Future : ${per2}%");
  } else if (percentage >= 50) {
    print("Fair you got C Grade : ${per2}%");
  } else {
    print("Fail Better Luck next time : ${per2}%");
  }
}
