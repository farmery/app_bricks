import 'package:flutter/material.dart';

class LoaderVm with ChangeNotifier {
  bool isLoading = false;
  bool silent = false;
  Future<T> load<T>(Future<T> Function() future, {bool silent = false}) async {
    this.silent = silent;
    isLoading = true;
    notifyListeners();
    final T va = await future();
    isLoading = false;
    notifyListeners();
    return va;
  }

  toggleLoader(bool val) {
    isLoading = val;
    notifyListeners();
  }
}
