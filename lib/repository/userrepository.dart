import 'package:dart_application_1/model/user.dart';
import 'package:dart_application_1/repository/datarepository.dart';

class UserRepository{
  //CRUD - CREATE,  READ, UPDATE, DELETE

  void createUser(User user){
    DataRepository.userDatabase.add(user);
  }
  
  void updateUser(User user){
    var model=DataRepository.userDatabase
    .firstWhere((element) => element.uid==user.uid);
    model=user;
  }
  void deleteUser(User user){
    DataRepository.userDatabase.remove(user);
  }
  
  User login(String email, String password){
    var model=DataRepository.userDatabase
    .firstWhere((element) => element.email==email && element.password==password);
    return model;
  }

  User readUserById(User user){
    var model=DataRepository.userDatabase.firstWhere((element) => element.uid==user.uid);
    return model;
  }
  User readUserByEmail(User user){
    var model=DataRepository.userDatabase.firstWhere((element) => element.email==user.email);
    return model;
  }
}