import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier{
  String user = '';


  void addUser(value){
    user = value;
    notifyListeners();
  }


}