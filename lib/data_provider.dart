import 'package:flutter/material.dart';

class DataProvider extends ChangeNotifier {
  int i = 0;

  void increment() {
    i += 1;
    notifyListeners();
  }

  void update(int i) {
    this.i = i;
    notifyListeners();
  }
}
