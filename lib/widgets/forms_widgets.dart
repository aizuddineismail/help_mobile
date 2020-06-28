import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/foundation.dart';
import 'dart:developer';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _showPassword = false;
  Color _iconColor = Colors.grey;
  bool _obscureText = true;
  FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = new FocusNode();
    _focusNode.addListener(focusActive);
  }

  @override
  void dispose() {
    _focusNode.removeListener(focusActive);
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Form(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Username",
                  prefixIcon: Icon(Icons.account_circle),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(),
                  ),
                ),
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Stack(
                alignment: Alignment.centerRight,
                children: <Widget>[
                  TextFormField(
                    focusNode: _focusNode,
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      labelText: "Password",
                      prefixIcon: Icon(Icons.vpn_key),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: IconButton(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      icon: _showPassword
                          ? Icon(
                              FontAwesomeIcons.eye,
                              color: _iconColor,
                            )
                          : Icon(
                              FontAwesomeIcons.eyeSlash,
                              color: _iconColor,
                            ),
                      onPressed: showPassword,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.blue,
                    onPressed: () {},
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    shape: StadiumBorder(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  showPassword() {
    setState(() {
      _showPassword = !_showPassword;
      _obscureText = !_obscureText;
    });
  }

  void focusActive() {
    if (_focusNode.hasFocus) {
      setState(() {
        _iconColor = Colors.blue;
      });
    } else {
      setState(() {
        _iconColor = Colors.grey;
      });
    }
  }
}
