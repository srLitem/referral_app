import 'package:flutter/material.dart';

class CandidatesDetailsInfo extends StatelessWidget {
  @required
  String name;
  @required
  int points;
  @required
  var date;

  CandidatesDetailsInfo({this.name, this.points, this.date});

  @override
  Widget build(BuildContext context) {
    List steps = [ //!! MOCK DATE, REMOVE WHEN USING REAL DATA
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
        Row(
          children: <Widget>[
            GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(Icons.arrow_back, color: Colors.white, size: 18,)
            ),
          SizedBox(width: 10,),
          Text('Candidates details', style: textStyling(18, FontWeight.bold),),
          ],
        ),
        SizedBox(height: 30),
        Text(
          //* Name of the employee
          name,
          style: textStyling(25, FontWeight.bold),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 30,
        ),
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
          height: 40,
        ),
        Row( //*Steps information
          children: <Widget>[
            Text( //* Left side
              'Completed steps',
              style: textStyling(23, FontWeight.bold),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 4,
            ),
            Text( //* Right side
              'Points',
              style: textStyling(23, FontWeight.bold),
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

  TextStyle textStyling(double size, FontWeight weight) {
    return TextStyle(
      color: Colors.white,
      fontWeight: weight,
      fontSize: size,
    );
  }

  Icon isVerified(bool value){
    return value ? Icon(Icons.check_circle) : Icon(Icons.check_circle_outline);
  }


}
