import 'package:flutter/material.dart';
import 'package:referral_app/widgets/candidates/details/candidates_details_info.dart';

class CandidatesDetailsPage extends StatelessWidget {
  @required
  final String name;
  @required
  final Color backColor;
  @required
  final int points;
  @required
  final String date;

  CandidatesDetailsPage({this.name, this.backColor, this.points, this.date});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            //* Background color
            decoration: BoxDecoration(color: backColor),
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: CandidatesDetailsInfo(name: name, date: date, points: points,), //* Information
          ),
        ],
      ),
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
