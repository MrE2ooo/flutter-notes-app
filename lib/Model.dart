import 'package:flutter/cupertino.dart';

import 'Notes.dart';



class Mymodel extends ChangeNotifier{

  List<Notes> items =[ ];

  void add(Notes note){
    items.add(note);

    notifyListeners();

  }

  List<Notes> get notes {
    return items;
  }


}