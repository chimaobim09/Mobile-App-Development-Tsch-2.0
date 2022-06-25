import 'dart:ffi';

void main(List<String> arguments) {
  //String Processing - Strings are manipulated
  String currency='NGN';
  double principal=50000;
  double rate = 0.4;
  double time=3;

  //SI= p*r*t/100;

  double simpleInterest=principal*rate*time/100;
  print(simpleInterest);
  print(currency+simpleInterest.toString());
  print("$currency$simpleInterest");
  
  String testValue='Ifeanyi Nwachukwu';
  String email='onyakachi001@gmail.com';
  String email2='INFO@TECHORIGIN.COM';
  if(email.contains('.com') && email.contains('@')){
    print('Email is VALID');
  }
  else{
    print('Email is INVALID');
  }
 
  print(email.toUpperCase());
  print(email2.toLowerCase());
  bool startsWith=email.trim().toLowerCase().startsWith("info");
  bool endsWith=email.trim().endsWith('.com');
  print(startsWith);
  print(endsWith);
  print(email.length);
  var index=email.indexOf('.com');
  print(index);

  int indexofat= email.indexOf('@');
  int indexofcom= email.indexOf('.com');
  String company= email.substring(indexofat+1,indexofcom);
  print(company);
  String name=email.substring(0,indexofat);
  print(name.toUpperCase());
  print(email.replaceAll('.com', '.net'));
  print(email.replaceAll('gmail', 'ymail'));
  print(email.replaceRange(indexofat, email.length, ''));

  //Class-Work
  //firstname - lastname - age ; firstname-lastname:age
  //find everywhere that o is in your firstname and replace it with hello
  //join firstname and lasname and extract the first 5 characters, last 4 characters and extract the first 4 characters after the 3rd index

  String fname='onyekachi';
  String lname='Nwachukwu';
  int age=90;
  print('$fname-$lname:$age');
  print(fname+'-'+lname+':'+age.toString());
  print(fname.replaceAll('o', 'Hello')+' $lname');
  String fullname='$fname $lname';
  print(fullname.substring(0,5));
  print(fullname.substring(fullname.length-4));
  print(fullname.substring(3,3+4));
  print(fullname.replaceAll(fullname.substring(0,fullname.length-4), ''));
}

void classTwo(){
  //X, Y, X+Y >10 - Print('Value is Valid) else Invalid Value

//X, Y, Z if X+Y >10 , ADD 20 TO Z and print Z if X+Y ==3 add 5 to Z and print z, if X+Z-Y is less than 0 then then add 30 to z and print z;

  int X = 5;
  int Y = 2;

  if (X + Y > 10) {
    print('Value is Valid');
  } else if (X + Y < 10) {
    print('value is invalid');
  }

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

  AgeGroup ageGroup;

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

enum AgeGroup { Child, Adolescent, Adult, Aged }
