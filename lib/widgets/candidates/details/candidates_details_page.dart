import 'package:flutter/material.dart';

class CandidatesDetailsPage extends StatelessWidget {
  @required
  String name;
  @required
  Color backColor;

  CandidatesDetailsPage({this.name, this.backColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            name,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        decoration: BoxDecoration(color: backColor),
      ),
    );
  }
}
