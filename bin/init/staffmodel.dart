abstract class StaffModel{
  StaffModel();
  StaffModel.init(this.phoneNumber);
  String name='';
  String address='';
  String phoneNumber='';
  String officeNumber='';
  String getName(){
    return name;
  }
}

class TeachingStaffModel extends StaffModel{ 
  TeachingStaffModel(super.phoneNumber):super.init();
  String classInCharge='';
  String totalStudents='';
  
  @override
  String getName(){
    return name+'New Name';
  }
}

class NonTeachingStaffModel extends StaffModel{
  NonTeachingStaffModel(super.phoneNumber):super.init();
  NonTeachingStaffModel.createByGoogle(super.phoneNumber,String gmail):super.init();
  NonTeachingStaffModel.createByFacebook(String username);
  NonTeachingStaffModel.init(this.supportStaffName);
  String supportStaffName='';


  String methodName(String overload){
      return '';
  }

  String methodName2(String overload,String overload2){
      return '';
  }
}

class Church {
Church(this.name,  this.address);

String name='';
String address='';
}