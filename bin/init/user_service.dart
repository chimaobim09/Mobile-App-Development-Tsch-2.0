import 'user.dart';

class UserService{
static List<String> users=[
"david@gmail.com",
"edafe@yahoomai.com",
"chimobi@yahoomai.com",
];

  static bool checkIfUserExists(String email){
    bool isExists=users.any((element) => element==email);
    return isExists;
  }

  static void addNewUser(User user){
    users.add(user.email);
  }

  static List<String> fetchAll(){
    return users;
  }
}