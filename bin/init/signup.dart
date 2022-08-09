class SignUp{
  String username='';
  String email='';
  String phoneNumber='';
  String password='';


  SignUp.init(this.email, this.password);
  SignUp.byFaceBook(this.phoneNumber, {this.username=''});
  SignUp.byGooogle(this.email);

}