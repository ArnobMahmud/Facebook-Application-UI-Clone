import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final Function onPressed;

  const Button({Key key, this.icon, this.iconSize, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
      ),
      child: IconButton(
          icon: Icon(icon),
          iconSize: iconSize,
          color: Colors.black,
          onPressed: onPressed),
    );
  }
}
