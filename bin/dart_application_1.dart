import 'dart:ffi';

void main(List<String> arguments) {
  //Dart Variables and Data Types
  //Print Name, Print Age, Print Total Cost
  String name = 'Promise Enyichukwu';
  int age = 3000;
  double totalCost = 3000.50;
  bool isMale = true; //false
  List<String> coursesOffered = [
    "Mobile Application Develoment",
    "Data Analysis",
    "UI/UX Development"
  ];
  List<int> ages = [10, 20, 70, 40];
  Map<String, String> map = {"boy": "5"};

  int xvalue = 90;
  int yvalue = 100;
  int zvalue = 70;

  // Data Operators
  int sumOfXnY = xvalue + yvalue; //addition operator
  int divisionOfZnX = zvalue ~/ xvalue;

  int multiplyXnYnZ = xvalue * yvalue * zvalue;
  int remainderYFromX = yvalue % xvalue;

  String fname = "David";
  String lname = "Asher";

  String fullname = fname + lname;

  print('Hello world');
  print("name: $name"); //String Interpolation
  print("age: $age");
  print("totalCost $totalCost");
  print("sumOfXnY: $sumOfXnY");
  print("divisionOfZnX: $divisionOfZnX");
  print("fullname: $fullname");
  print("remainderYFromX: $remainderYFromX");

  //Conditional Statements
  String result = "";
  bool isFemale = true;
  //Logical Operators ==, >=, <=, >, <, !=
  if (isFemale == true) {
    result = "Female";
    print(result);
  } else if (isFemale == false) {
    result = "Male";
    print(result);
  }

  //Logical Joining Operators  And - && Or ||
  String nameTag1 = "David";
  String nameTag2 = "Somto";
  if (nameTag1 == "Promise" && nameTag2 == "Chimobi") {
    print("and found");
  } else if (nameTag1 == "Promise" || nameTag2 == "Chimobi") {
    print("or found");
  } else {
    print("failed");
  }
}
