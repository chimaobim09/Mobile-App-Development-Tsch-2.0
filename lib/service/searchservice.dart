import 'package:dart_application_1/repository/datarepository.dart';

import '../model/note.dart';

class SearchService{
  List<Note> searchNotes(String keyword){
    var searchedItems=DataRepository.noteDatabase
    .where((element) => element.title.toLowerCase().contains(keyword.toLowerCase()) ||
                        element.content.toLowerCase().contains(keyword.toLowerCase())||
                        element.group.toLowerCase().contains(keyword.toLowerCase()));
    return searchedItems.toList();
  }
}