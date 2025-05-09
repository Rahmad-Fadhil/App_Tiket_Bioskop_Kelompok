import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  String _username = '';

  String get username => _username;

  void setUsername(String newUsername) {
    _username = newUsername;
    notifyListeners();
  }

  void login(String username) {
    _username = username;
    notifyListeners();
  }

  void logout() {
    _username = '';
    notifyListeners();
  }
}
