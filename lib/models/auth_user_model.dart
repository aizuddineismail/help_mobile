

import 'package:flutter/foundation.dart';

class AuthUserModel extends ChangeNotifier {
  bool _userAuthenticated = false;
  bool get userAuthenticated => _userAuthenticated;

  void signIn() {
    _userAuthenticated = true;
    notifyListeners();
  }

  void signOut() {
    _userAuthenticated = false;
    notifyListeners();
  }
}