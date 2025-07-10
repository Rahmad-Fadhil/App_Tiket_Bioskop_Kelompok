import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  String _username = '';
  String _bio = '';
  String _description = '';
  String _birthday = '';

  String get username => _username;
  String get bio => _bio;
  String get description => _description;
  String get birthday => _birthday;

  void setUsername(String newUsername) {
    _username = newUsername;
    notifyListeners();
  }

  void setbio(String value) {
    _bio = value;
    notifyListeners();
  }

  void setdescription(String value) {
    _description = value;
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
