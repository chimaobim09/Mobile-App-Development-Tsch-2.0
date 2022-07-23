import 'dart:ffi';

void main(List<String> arguments) {

//Numeric
//dataType variablename;
//dataType variablename = assignedvalue

//Declaration of variables
int age=23;
age=56;
double amount=9000.50;
num value=8200.70;


//Non-Numeric
String name='Chuks';
name="Godspower";
name='''jd''';


//Boolean
bool isMale=true;
isMale=false;


//List

List<double> listVal=[20.65,70,55.3,90];
List<String> stringVal=['Chimaobi','Asher','David'];

//Maps
Map<String,String> mapKeyValuePair={"Key":"Value"};

}

void Revision2(){
  
String document2 ='sn-customername-customerId||1-Chimobi-756765||2-David-6876576';

String newString='david edafe@ gmail.com';

print(newString.replaceAll(' ', ''));
print(newString.substring(5,12));
//Remove all spaces
//Replace david with junior
//replace gmail.com with ymail.net
//extract the 6th character to the 12th index

var dart = "Hello World, I'm Dart Language";
print(dart.substring(1,9));
var dart2=dart.substring(0,5);
print(dart2);
var dart3=dart.substring(dart.length -6);
var dartall= dart2+dart3;
print(dartall);

String follow='Hello,World,Dart,Language';
List<String> separate=follow.split(',');
print(separate[0]);
print(separate[1]);
print(separate[2]);
print(separate[3]);












String document='sn;name;age;phonenumber%1;ifeanyi;30;09878576786'; //, - Delimerter

List<String> separation=document.split('%');
List<String> firstSeparation=separation[0].split(';');
List<String> secondSeparation=separation[1].split(';');
print(firstSeparation[0]);
print(firstSeparation[1]);
print(firstSeparation[2]);
print(firstSeparation[3]);
print(secondSeparation[0]);
print(secondSeparation[1]);
print(secondSeparation[2]);
print(secondSeparation[3]);
}

void Revision() {
  //Simple Interest Calculation
  //SI = PRT/100, principal, rate, time

  //SI > 10000 - PRINT HIGH INTEREST
  //SI BETWEEN 5000 & 10000 - MID INTEREST RATE
  //SI LESS 5000 - LOW INTEREST RATE

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
  String convertedString=principal.toString();
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
  //Logical Operators
  //== - Assignment Operator, Mathematical Operators >, <, >=, <=, !=
  //Logical Joining Operators - && ||
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
