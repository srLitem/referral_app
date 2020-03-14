import 'package:flutter/material.dart';
import 'package:referral_app/widgets/candidates/details/candidates_details_page.dart';

class Candidates extends StatefulWidget {
  @required
  final String date;
  @required
  final String name;
  @required
  final String step;
  @required
  final int points;
  @required
  final Color backgroundColor;

  //!! These fields might change according to the designs
  Candidates(
      
      {this.name,
      this.points,
      this.step,
      this.date,
      this.backgroundColor});

  @override
  _CandidatesState createState() => _CandidatesState();
}

class _CandidatesState extends State<Candidates> {
  void goToDetails() {
    //* Allows to open de details page of the selected candidate
    // TODO: Change for NamedRoutes
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => CandidatesDetailsPage(
          name: widget.name,
          backColor: widget.backgroundColor,
          points: widget.points,
          date: widget.date,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //* Widget to redirect users to the candidates details page
    return GestureDetector(
      onTap: goToDetails,
      child: Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        //* Column to show each candidate element 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //* Date
                Text(
                  widget.date,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                  ),
                ),
                //* # of points
                Text(
                  '${widget.points.toString()} Points',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            //* Name of the employee
            Text(
              widget.name,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            //* Current step of the referral process
            Text(
              widget.step,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
