import 'package:flutter/material.dart';
import 'package:referral_app/widgets/header_back.dart';

//*Widget to show the information of the details page
//* Of each one of the candidates
class CandidatesDetailsInfo extends StatelessWidget {
  @required
  final String name;
  @required
  final int points;
  @required
  final String date;
  //! The steps list should be added here when receiving it from the backend

  CandidatesDetailsInfo({this.name, this.points, this.date});

  @override
  Widget build(BuildContext context) {
    //!! MOCK DATA, REMOVE WHEN USING REAL DATA
    List steps = [
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
        //* Usage of the header to go to the previous page
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
        Row(
          //*Steps information
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              //* Left side
              'Completed steps',
              style: textStyling(20, FontWeight.bold),
            ),
            Text(
              //* Right side
              'Points',
              style: textStyling(20, FontWeight.bold),
            ),
          ],
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: steps.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                right: 10,
                bottom: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    //*Left side of the list
                    children: <Widget>[
                      isVerified(steps[index]['is_completed']),
                      SizedBox(width: 5),
                      Text(
                        steps[index]['step'],
                        style: textStyling(20, FontWeight.normal),
                      ),
                    ],
                  ),
                  Text(
                    //*Right side of the list
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

  TextStyle textStyling(double size, FontWeight weight) { //TODO: Change for theme picker
    return TextStyle(
      color: Colors.white,
      fontWeight: weight,
      fontSize: size,
    );
  }

  //* Function to return the correct icon per step
  //* considering if it is completed or not
  Icon isVerified(bool value) {
    return value
        ? Icon(
            Icons.check_circle,
            color: Colors.white,
            size: 28,
          )
        : Icon(
            Icons.check_circle_outline,
            color: Colors.white,
            size: 28,
          );
  }
}
