import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
//  Required parameters
  final String text;
  final IconData icon;
  final VoidCallback onPress;

//  Non-required parameters
  final Color color;
  final double size;

  SignUpButton(
      {@required this.text,
      @required this.icon,
      @required this.onPress,
      this.color,
      this.size});

  final TextStyle textStyle = TextStyle(
    fontSize: 16,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: MaterialButton(
          padding: EdgeInsets.all(0.0),
          onPressed: this.onPress,
          color: this.color,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 48,
                height: 48,
                child: Icon(
                  this.icon,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Text(
                  this.text,
                  style: this.textStyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          )),
    );
  }
}
