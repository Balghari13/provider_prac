import 'package:flutter/foundation.dart';


class FaviourteProvider extends ChangeNotifier{
  List<int> _selected = [];

  List get selected => _selected;

  void add(int value){
    _selected.add(value);
    notifyListeners();
  }

  void remove(int value){
    _selected.remove(value);
    notifyListeners();
  }

}