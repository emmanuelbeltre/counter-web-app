import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final String buttonText;
  final Color myColor;
  final Function onPressed;

  const CustomFlatButton(
      {Key? key,
      required this.buttonText,
      this.myColor = Colors.pink,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(primary: Color.fromARGB(255, 161, 27, 72)),
        onPressed: () => this.onPressed(),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(buttonText),
        ));
  }
}
