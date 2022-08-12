import 'package:uuid/uuid.dart';

class Note{
  Note(this.userId,this.title,this.group);
  String uid= const Uuid().v1();
  String title="";
  String content="";
  DateTime createdDate=DateTime.now();
  DateTime lastUpdated=DateTime.now();
  String group="";
  String userId="";
  String userName="";
  String userEmail="";
  bool isNoteLocked=false;
  String pin="";
  bool isNotePinned=false;
}