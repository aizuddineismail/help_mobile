import 'package:flutter/material.dart';
import 'package:helpmobile/models/auth_user_model.dart';
import 'package:helpmobile/screens/login_screen.dart';
import 'package:helpmobile/screens/main_screen.dart';
import 'package:provider/provider.dart';

class AuthWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer <AuthUserModel>(
        builder: (context, data, child) {
          return data.userAuthenticated ? MainScreen() : LoginScreen();
        },
    );
  }
}
