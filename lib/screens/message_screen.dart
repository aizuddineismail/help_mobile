import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Message Screen'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Username'),
              Text('Password'),
              Text('Email'),
            ],
          )
        ),
      ),
    );
  }
}
