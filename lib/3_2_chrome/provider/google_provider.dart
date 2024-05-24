import 'package:flutter/widgets.dart';

class GoogleProvider extends ChangeNotifier{
  double progres=0;
  String search="Google";
  void ChangeProgres(int progres){
    this.progres=progres/100;
    notifyListeners();
  }
  void Search(String search){
    this.search=search;
    notifyListeners();
  }
}