import 'package:flutter/material.dart';

class NotifyVm with ChangeNotifier {
  bool isVisible = false;
  String content = '';

  showNotification(String content) async {
    this.content = content;
    isVisible = true;
    notifyListeners();
    await Future.delayed(Duration(milliseconds: 2500));
    isVisible = false;
    notifyListeners();
    content = '';
  }
}
