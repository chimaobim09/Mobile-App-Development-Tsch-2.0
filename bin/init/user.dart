class User{
  User(this.Name,this.email,this.password,this.Age,{this.IsDead});
  int Age;
  String email;
  String password;
  String Name;
  String? Gender;
  double? Height;
  double? Weight;
  bool IsSick=false;
  bool? IsDead;


  void toWalk(){
    print("I am walking");
  }

  void toStand(){
    print("I am standin");
  }

  bool canEatViaMouth(){
      if(IsSick){
        return false;
      }
      else{
        return true;
      }
  }

  void confirmDeath(bool isDead){
      IsDead=isDead;
  }
}