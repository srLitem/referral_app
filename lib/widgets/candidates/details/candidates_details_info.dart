import 'package:flutter/material.dart';
import 'package:referral_app/widgets/header_back.dart';

class CandidatesDetailsInfo extends StatelessWidget {
  @required
  final String name;
  @required
  final int points;
  @required
  final String date;

  CandidatesDetailsInfo({this.name, this.points, this.date});

  @override
  Widget build(BuildContext context) {
    List steps = [ //!! MOCK DATA, REMOVE WHEN USING REAL DATA
      {
        'step': 'Registration',
        'is_completed': true,
        'points': 25,
      },
      {
        'step': 'Being awesome',
        'is_completed': true,
        'points': 25,
      },
      {
        'step': 'Eating kaas crackers',
        'is_completed': false,
        'points': 50,
      },
      {
        'step': 'Win it',
        'is_completed': false,
        'points': 100,
      },
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        HeaderBack('Candidates'),
        SizedBox(height: 30),
        //* Name of the employee
        Text(
          name,
          style: textStyling(25, FontWeight.bold),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 30,
        ),
        //* Here we are showing the information of the creation date
        //* and points of the selected employee
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Column(
                //* Creation date
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Created in',
                    style: textStyling(18, FontWeight.normal),
                  ),
                  Text(
                    date,
                    style: textStyling(18, FontWeight.bold),
                  ),
                ]),
            SizedBox(
              width: 60,
            ),
            Column(
                //* Earned points
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Points earned',
                    style: textStyling(18, FontWeight.normal),
                  ),
                  Text(
                    points.toString(),
                    style: textStyling(18, FontWeight.bold),
                  ),
                ]),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        //* Here we show the list of the steps that the employye has/hasn't
        //* completed along with the amount of earned points
        //* ListBuilder to generate the dynamic steps according to the data
        Row( //*Steps information
          children: <Widget>[
            Text( //* Left side
              'Completed steps',
              style: textStyling(20, FontWeight.bold),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 3.8,
            ),
            Text( //* Right side
              'Points',
              style: textStyling(20, FontWeight.bold),
            ),
          ],
        ),
        ListView.builder( //TODO: Refactor to align the columns
          shrinkWrap: true,
          itemCount: steps.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                right: 10, //!! Remove when addign the alignment with columns
                bottom: 10, 
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row( //*Left side
                    children: <Widget>[
                      isVerified(steps[index]['is_completed']),
                      SizedBox(width: 5),
                      Text(
                        steps[index]['step'],
                        style: textStyling(20, FontWeight.normal),
                      ),
                    ],
                  ),
                  Text( //*Right side
                    '+ ${steps[index]['points'.toString()]}',
                    style: textStyling(20, FontWeight.bold),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  TextStyle textStyling(double size, FontWeight weight) { //TODO: Make a file or add theme
    return TextStyle(
      color: Colors.white,
      fontWeight: weight,
      fontSize: size,
    );
  }

  Icon isVerified(bool value){
    return value ? Icon(Icons.check_circle, color: Colors.white, size: 28,) : Icon(Icons.check_circle_outline, color: Colors.white, size: 28,);
  }


}
