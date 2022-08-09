import 'package:uuid/uuid.dart';

class User{

  User.init(this.name, this.email, this.password);

  String uid= const Uuid().v1();
  String name;
  String email;
  String password;

  String image='';
  String address='';
  String phoneNumber='';
}