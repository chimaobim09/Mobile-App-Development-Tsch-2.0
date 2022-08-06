import 'dart:ffi';

import 'staffmodel.dart';
import 'user.dart';
import 'user_service.dart';

void main(List<String> arguments) {

var church=Church('name','address');

//Synchronous
var teachingStaff=TeachingStaffModel();
teachingStaff.name='';
teachingStaff.getName();



var nonstaff1=NonTeachingStaffModel(); 
var nonstaff2=NonTeachingStaffModel.init('Staff Name');


delayForFiveSeveconds();
dontDelay();
seconddontDelay();




User user=User("David","onyeka@gmail.com","5678hh",90,IsDead: true);
user.Height=90;
user.Weight=10;
user.toWalk();

var users=UserService.fetchAll();
print(users);
bool exists=UserService.checkIfUserExists(user.email);
if(exists){
  print("User already exists");
}
else{
  UserService.addNewUser(user);
  var users=UserService.fetchAll();
  print(users);
  print("User Created Successfully");
}

}
void dontDelay(){
  print("I was not delayed");
}
void seconddontDelay(){
  print("I was not delayed");
}
Future delayForFiveSeveconds() async {
  await Future.delayed(Duration(seconds: 5));
  print('Hello i was delayed for 5s');
}


void sum(double param1, double param2, double param3){
  print(param1+param2+param3);
}

void methodName(){
  return;
}

void methodClass(){
  
//Methods are functions or routines that performs a particular operation
//Return Type - Data Type -Variable
//Create a Method that will sum three values passed to it
//Create a method that will sum two values and multiply by the third value
//Create a method that returns the sum of three values
//Createa method that will return sum of two values multiplied by the third value

  String variableName="";
  LoginWithPin("ifeanyi@yahoo.com",pin: 46);
  Login("ifeanyi@yahoo.com","paswword6789");
  sum(8, 9, 10);
}

void LoginWithPin(String email,{String password="",int pin=0}){
  print("$email is logged In");
  String loginProfile=LoginAndReturnProfile('ifeanyi@gmail.com', 1234);
  print(loginProfile);
}

void Login(String email,String password){
  print("$email is logged In");
  String loginProfile=LoginAndReturnProfile('ifeanyi@gmail.com', 1234);
  print(loginProfile);
}

String LoginAndReturnProfile(String email, int pin){
  print("$email is logged In");
  return "David's Profile";
}

String GetProfile(String email, String password){
    String name='Chimobi';
    String exp_email="chimobo@gmail.com";
    String xp_password="Mosco123";


    if(email==exp_email && password==xp_password){
      return name;
    }
    else{
        return "Login Error";
    }
}


void Revision3() {
  //1. Hello World, I'm Dart Language
//-- Extract from the second index to the the 10th Character of
//Join the First 6 character to the last 6 character

//2. Split the following text by comma and print each items 'Hello,World,Dart,Language'

//3. Extract the First Two Elements of the splitted item in (2) above
//

//Conditional Statement
//Print all the numbers that is divisible by 3 from the list
//[10,20,21,33,36,81,88,90,120,111]

//Check for every number in the list above when added to 7 will give an even number

//Think of a nested Conditional if statment of 3 degrees

  var names = ['Chimobi', 'nadia', 'Asher', 'namdi', 'Ifeanyi'];
  String chimobi = 'Chimobi';
  print(chimobi[3]);
  print(chimobi.substring(3));
  print(chimobi.indexOf('o'));

  print(names.length);
  print(names.first);
  print(names.last);
  print(names.indexOf('Chimobi'));
//LAMBDA
  var items = names
      .where((element) => element.contains('na') || element.startsWith('n'));
  print(items);
  print(names.firstWhere((element) => element.startsWith('n')));

  var item = names.firstWhere((element) => element.startsWith('n'));
  print(item);
  var firstTwo = names.take(2);
  print(names.lastWhere((element) => element.startsWith('n')));
}

void Revision2() {
  for (int i = 9; i < 10; i++) {
    print(i);
  }
  int integerValue;
  List<String> names = ['Chimobi', 'David', 'Nnamdi'];

  for (var element in names) {
    print(element);
  }
  int iValue = 1;
  print('has started');
  while (iValue <= 12) {
    print('Is Running');
    iValue++;
  }

  do {
    print('Is Running');
    iValue++;
  } while (iValue <= 24);
}

void classFive() {
  List<String> items = ['Item One', 'Itm Two', 'Item Three', 'Itm Four'];
  List<int> intItems = [1, 2, 4, 9, 7];
  List<bool> boolItems = [true, false, false, true];

  for (var i = 5; i > 0; i--) {
    print(i);
  }
//List Dynamics
//How Collections functions and responds to actions

//A list/collection can be a collection of collections
//Primitive Types - String, int, bool, double

  List<List<String>> colOfCol = [
    ["Item One", "Item Two"],
    ["Item One", "Item Two"],
  ];

  List<List<List<int>>> colOfColofCol = [
    [
      [1, 2, 3]
    ],
  ];

  int i = 1;
  for (var item in colOfCol) {
    print('List $i');
    for (var element in item) {
      print(element);
    }
    i++;
  }

  print("Initial Length ${items.length}");
  print('Initial Items $items');
  print(items[0]);
  print(items[1]);
  print(items.first);
  print(items.last);
  print(items.reversed);

  items.add('New String');
  print("New Length ${items.length}");
  print('New Items $items');

//CLASS WORK ONE
//CREATE AN EMPTY LIST, RUN ITERATION FROM 1 TO 10, UPDATE THE LIST WITH THE VALUES FROM THE ITERATION, PRINT THE NEW LIST ITEMS AND THE TOTAL LENGTH

//CREATE LIST
  List<int> itemsList = [];
  for (var i = 1; i <= 10; i++) {
    itemsList.add(i);
  }

  print(itemsList.length);
  print(itemsList);

// List<int> newList=[11,12,13,14,15];
  itemsList.addAll([11, 12, 13, 14, 15]);

  print(itemsList.length);
  print(itemsList);

//CLASS WORK
  List<int> initItems = [2, 4, 6, 8, 9, 10];
//Add to this list all numbers between 80 and 120
//Add to this list all even numbers between 80 and 120
  for (var i = 80; i < 120; i++) {
    if (i % 2 == 0) {
      initItems.add(i);
    }
  }
  print(initItems);

//=> Such That- It helps in checking for conditions => Lamda Expression
  var hasTwo = initItems.any((i) => i + 4 == 10);
  print(hasTwo);

  for (var element in initItems) {
    if (element == 2) {
      print(true);
      break;
    }
  }
  print(initItems.length);
  initItems.clear();
  print(initItems.length);
  initItems.remove(2);
  initItems.remove(10);
  print(initItems);
  initItems.removeAt(4);
  initItems.removeAt(initItems.indexOf(90));
  print(initItems);
  print(initItems.elementAt(4));
  int itemThatSatifiesConditin =
      initItems.firstWhere((element) => element + 4 == 10);
  print(itemThatSatifiesConditin);
  var allItems = items.where((element) => element.contains('em'));
  print(allItems);
  initItems.removeRange(5, 10);
  for (var element in initItems) {
    print(element);
  }

  List<String> classes = [];
}

void classFour() {
  //Loops & Iterations
//List Management

//A process whereby an ~action~ is performed ~repeatedly~
//Action is a procedure to solve a problem
//Actions are algorithm that solves a particular problem
//Components of Iteration
  //Action
  //Loop Control Variable (LCV) - Determines when the action should end
  //End condition
//for, foreach/for-in, do while, while
// for (loop conditions -lcv) {
//   Actions
// }
//do
//{
  // Actions
//} while(condition)
// Breaking or Ending and Iteration
//>>> Continue - Iteration still continues only action is truncated
//>>> Break  - Both Actions and Iterations are truncated
//>>> Return - Actions, Iterations and Procedres are truncated
//Create an Iteration for multiples of 1 to 100
  for (int i = 1; i <= 12; i++) {
    print(i);
  }

  for (int i = 1; i <= 12; i++) {
    for (int j = 1; j <= 12; j++) {
      print('$i * $j = ${i * j}');
    }
  }

  for (int i = 1; i <= 12; i++) {
    print('Before continue $i');
    continue;
    print('After continue $i');
  }

  for (int i = 1; i <= 12; i++) {
    print('Before continue $i');
    break;
    continue;
    print('After continue $i');
  }

  List<String> names = ["Onyekachi", "David", "Chuks", "Nnamdi", "Promise"];
  for (String name in names) {
    print('$name is Present');
  }

  double bucketSize = 20;
  double smallBucket = 1.5;
  while (smallBucket <= bucketSize) {
    smallBucket += 1.5;
    if (smallBucket <= bucketSize) {
      print(smallBucket);
    }
  }

  do {
    smallBucket += 1.5;
    print(smallBucket);
  } while (smallBucket <= bucketSize);

  print('After Break');
}

void Revision() {
  //Creates a variable that holds the coursename, coursegrade, coursepoint,
  //Create a List of student ages
  //Create a map of total boys and total girls in a class

  //sum david age 20 to Onyekachi age 30 to  joy age 40
  //Divide based on integer the age of onyekachi and david
  //Find the remainder of adding joy and davids age subtracted
  //from 15 divide by 12

  String testValue = 'Ifeanyi Nwachukwu';
  String email = 'onyakachi001@gmail.com';
  String email2 = 'INFO@TECHORIGIN.COM';
  String dotnet='.net';
  print(email.replaceAll('.com', dotnet));
  print(email.replaceRange(5,9, 'firstfive'));
  // print(email2.contains('.com'));
  // print(email.contains('@'));
  // print(email2);
  // print(email2.toLowerCase());
  String spacedText=' Odera';
  String text='Odera';
  print(spacedText.trimRight()==text);
  print(text.indexOf('e'));
  print(spacedText[1]);
  print(spacedText.trim().startsWith('O'));
  String newVariable=email.substring(5,10);
  print('New Variable: $newVariable');
  String currency='NGN';
  double principal = 10000;
  print(principal);
  double rate = 5;
  double time = 2.5;

  double si = principal * rate * time / 100;
  print(si);

  if (si > 10000) {
    print('High Interest Rate');
  }
  else if(si>5000 && si<10000){
    print('Mid Interest Rate');
  }
  else{
    print('Low Interest Rate');
  }

print(currency+si.toString());
print('$currency$si');
  int daviDAge = 20;
  int onyekachiAge = 30;
  int joyAge = 40;
  int sumOfAges = daviDAge + onyekachiAge + joyAge;
  print('Sum of All Ages: $sumOfAges');
  int intDivision = onyekachiAge ~/ daviDAge;
  print('Integer Division: $intDivision');
  //Method One
  int remainder = (joyAge + daviDAge - 15) % 12;
  print('Remainder: $remainder');
  //Method Two
  int addition = joyAge + daviDAge - 15;
  int remainder2 = addition % 12;

  String coursename = 'Physics';
  String coursegrade = 'B';
  int coursepoint = 1;

  List<int> studentAges = [10, 20, 30];
  Map<String, int> totalBoysMap = {'totalboys': 90};
  Map<String, int> totalGirlsMap = {'totalgirls': 50};
}

void classThree() {
  //String Processing - Strings are manipulated
  String currency = 'NGN';
  double principal = 50000;
  double rate = 0.4;
  double time = 3;
  //SI= p*r*t/100;

  double simpleInterest = principal * rate * time / 100;
  print(simpleInterest);
  print(currency + simpleInterest.toString());
  print("$currency$simpleInterest");

  String testValue = 'Ifeanyi Nwachukwu';
  String email = 'onyakachi001@gmail.com';
  String email2 = 'INFO@TECHORIGIN.COM';
  if (email.contains('.com') && email.contains('@')) {
    print('Email is VALID');
  } else {
    print('Email is INVALID');
  }

  print(email.toUpperCase());
  print(email2.toLowerCase());
  bool startsWith = email.trim().toLowerCase().startsWith("info");
  bool endsWith = email.trim().endsWith('.com');
  print(startsWith);
  print(endsWith);
  print(email.length);
  var index = email.indexOf('.com');
  print(index);

  int indexofat = email.indexOf('@');
  int indexofcom = email.indexOf('.com');
  String company = email.substring(indexofat + 1, indexofcom);
  print(company);
  String name = email.substring(0, indexofat);
  print(name.toUpperCase());
  print(email.replaceAll('.com', '.net'));
  print(email.replaceAll('gmail', 'ymail'));
  print(email.replaceRange(indexofat, email.length, ''));

  //Class-Work
  //firstname - lastname - age ; firstname-lastname:age
  //find everywhere that o is in your firstname and replace it with hello
  //join firstname and lasname and extract the first 5 characters, last 4 characters and extract the first 4 characters after the 3rd index

  String fname = 'onyekachi';
  String lname = 'Nwachukwu';
  int age = 90;
  print('$fname-$lname:$age');
  print(fname + '-' + lname + ':' + age.toString());
  print(fname.replaceAll('o', 'Hello') + ' $lname');
  String fullname = '$fname $lname';
  print(fullname.substring(0, 5));
  print(fullname.substring(fullname.length - 4));
  print(fullname.substring(3, 3 + 4));
  print(fullname.replaceAll(fullname.substring(0, fullname.length - 4), ''));
}

void classTwo() {
  //X, Y, X+Y >10 - Print('Value is Valid) else Invalid Value

//X, Y, Z if X+Y >10 , ADD 20 TO Z and print Z if X+Y ==3 add 5 to Z and print z, if X+Z-Y is less than 0 then then add 30 to z and print z;

  int X = 5;
  int Y = 2;

  if (X + Y > 10) {
    print('Value is Valid');
  } else if (X + Y < 10) {
    print('value is invalid');
  }


//loop classwork

for (int i = 0; i < 10; i++) {
  print(i);
}

List<String> namess = [
    "Chimaobim",
    "David",
    "Ebube"
  ];
for (var element in namess) {
  print(element);
}
var items=namess.where((element) => element.startsWith('n'));
print(items);




  const int age = 55;
  //Age is between 0 - 9 - Child
  //Age is between 10 - 18 - Adolescent
  //Age is between 18 - 45 - Adult
  //>45 Aged
  String output = "";
  if (age > 0 && age < 9) {
    output = "Child";
  } else if (age >= 10 && age < 18) {
    output = "Adolescent";
  } else if (age >= 18 && age < 45) {
    output = "Adult";
  } else if (age > 45) {
    output = "Aged";
  }

  print(output);

  //Nested Conditions
  //Type - Roughness, Print 5 if roughness >10, < 10 - 19
  String type = "roughness";
  int roughnessValue = 20;
  int roughnessFactor = 10;
  if (type == "roughness") {
    if (roughnessValue > 10) {
      if (roughnessFactor == 0) {
        print('no - roughness');
      } else {
        print(5);
      }
    } else if (roughnessValue < 10) {
      print(19);
    }
  }

  //Switch Statements
  //type scv - Switch Control Value
  switch (type) {
    case "roughness":
      print('the value is correct');
      break;
    case "chimobi":
      print('It is Chimobi');
      break;
  }

  //Age is between 0 - 9 - Child
  //Age is between 10 - 18 - Adolescent
  //Age is between 18 - 45 - Adult
  //>45 Aged
  switch (age) {
    case 0:
      print('The value is 0');
      break;
    case 1:
      print('The value is 1');
      break;
    case 3:
      print('The is value is 3');
      break;
  }

  AgeGroup ageGroup = AgeGroup.Child;
  switch (ageGroup) {
    case AgeGroup.Child:
      // TODO: Handle this case.
      print('Age Group $ageGroup');
      break;
    case AgeGroup.Adolescent:
      // TODO: Handle this case.
      break;
    case AgeGroup.Adult:
      // TODO: Handle this case.
      break;
    case AgeGroup.Aged:
      // TODO: Handle this case.
      break;
  }

  if (age > 0 && age < 9) {
    ageGroup = AgeGroup.Child; //"Child";
    switch (ageGroup) {
      case AgeGroup.Child:
        if (ageGroup == AgeGroup.Child) {
          print('child');
        }

        break;
      case AgeGroup.Adolescent:
        // TODO: Handle this case.
        break;
      case AgeGroup.Adult:
        // TODO: Handle this case.
        break;
      case AgeGroup.Aged:
        // TODO: Handle this case.
        break;
    }
  } else if (age >= 10 && age < 18) {
    ageGroup = AgeGroup.Adolescent;
  } else if (age >= 18 && age < 45) {
    ageGroup = AgeGroup.Adult;
  } else if (age > 45) {
    ageGroup = AgeGroup.Aged;
  }
}

void classOne() {
  //Dart Variables and Data Types
  //Print Name, Print Age, Print Total Cost
  String address;
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
  Map<String, String> joy = {"address": "Eneka"};
  Map<String, List<String>> map = {
    "address": ["Eneka", 'Rumuodara']
  };
  int xvalue = 90;
  int yvalue = 100;
  int zvalue = 70;

  // Data Operators
  int sumOfXnY = xvalue + yvalue; //addition operator
  int subtractXnY = xvalue - yvalue;

  int multiplyXnYnZ = xvalue * yvalue * zvalue;
  double divideXnY = xvalue / yvalue; //5/2 = 2.5

  int divisionOfZnX = zvalue ~/ xvalue; // 5/2 = 2.89 ==3
  int remainderYFromX = yvalue % xvalue; //13%10 = 3

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

enum AgeGroup { Child, Adolescent, Adult, Aged }
