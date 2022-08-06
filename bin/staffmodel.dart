abstract class StaffModel{

  String name='';
  String address='';
  String phoneNumber='';
  String officeNumber='';
  String getName(){
    return name;
  }
}

class TeachingStaffModel extends StaffModel{ 
  String classInCharge='';
  String totalStudents='';
  
  @override
  String getName(){
    return name+'New Name';
  }
}

class NonTeachingStaffModel extends StaffModel{
  NonTeachingStaffModel();
  NonTeachingStaffModel.createByGoogle(String gmail);
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