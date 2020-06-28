import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:helpmobile/widgets/buttons_widgets.dart';
import 'package:helpmobile/widgets/forms_widgets.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help Mobile App'),
      ),
      body: Container(
        alignment: Alignment.bottomCenter,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                LoginForm(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SignUpButton(
                      onPress: () {},
                      text: 'Continue with Google',
                      icon: FontAwesomeIcons.google,
                      color: Colors.red,
                    ),
                    SignUpButton(
                      onPress: () {},
                      text: 'Continue with Facebook',
                      icon: FontAwesomeIcons.facebookSquare,
                      color: Colors.blue,
                    ),
                    SignUpButton(
                      onPress: () {},
                      text: 'Register a new account',
                      icon: FontAwesomeIcons.addressBook,
                      color: Colors.green,
                    )
                  ],
                ),
                Text(
                  'By signing up, you agree to our Terms of Service and Privacy Policy',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
