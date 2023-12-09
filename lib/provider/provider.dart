import 'package:flutter/material.dart';

class NumberProvider extends ChangeNotifier {
  String _enteredString = '';

  String get enteredString => _enteredString;

  set setString(String value) { // set String to entered Text
    _enteredString += value;
    notifyListeners();
  }

  bool _showError = false; // show error to user

  bool get showError => _showError;

  set showerrorr(bool value) { // set show error values
    _showError = value;
    notifyListeners();
  }

  delete() { // Delete a number
    if (_enteredString.isNotEmpty) {
      _enteredString = _enteredString.substring(0, _enteredString.length - 1);
      notifyListeners();
    }
  }
}
