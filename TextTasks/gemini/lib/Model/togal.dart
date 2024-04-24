import 'package:flutter/material.dart';

class Toggle extends ChangeNotifier {
  bool isToday = true;
  bool isYesterday = false;
  bool isTomorrow = false;

  void toggleToday() {
    isToday = true;
    isYesterday = false;
    isTomorrow = false;
    notifyListeners();
  }

  void toggleTomorrow() {
    isTomorrow = true;
    isToday = false;
    isYesterday = false;
    notifyListeners();
  }

  void toggleYesterday() {
    isYesterday = true;
    isTomorrow = false;
    isToday = false;
    notifyListeners();
  }
}
