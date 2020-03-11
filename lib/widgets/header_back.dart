import 'package:flutter/material.dart';

class HeaderBack extends StatefulWidget {
  @required
  final String title;
  final int points;
  HeaderBack(this.title, {this.points});

  @override
  _HeaderBackState createState() => _HeaderBackState();
}

class _HeaderBackState extends State<HeaderBack> {
  @override
  Widget build(BuildContext context) {
    return Row(
          children: <Widget>[
            GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(Icons.arrow_back, color: Colors.white, size: 18,)
            ),
          SizedBox(width: 10,),
          Text(widget.title, style: textStyling(18, FontWeight.bold),),
          ],
        );
  }

  TextStyle textStyling(double size, FontWeight weight) {
    return TextStyle(
      color: Colors.white,
      fontWeight: weight,
      fontSize: size,
    );
  }
}