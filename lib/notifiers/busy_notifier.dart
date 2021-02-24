import 'package:flutter/material.dart';

class BusyNotifier with ChangeNotifier {
  bool _isLoading = false;

  get isLoading => _isLoading;

  set isLoading(bool isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }

  void busy() {
    isLoading = true;
  }

  void finished() {
    isLoading = false;
  }
}
