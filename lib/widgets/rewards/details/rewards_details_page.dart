import 'package:flutter/material.dart';
import 'package:referral_app/widgets/header_back.dart';

class RewardsDetailsPage extends StatelessWidget {
  @required
  final String picture;
  @required
  final String name;
  @required
  final int points;
  @required
  final String description;

  RewardsDetailsPage({this.picture, this.name, this.points, this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/img/pug.jpg',
          ),
          Container(
            decoration: BoxDecoration(color: Colors.black.withOpacity(.5)),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
              left: 30,
              right: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                HeaderBack('Shop details'),
                SizedBox(height: 40),
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height/1.5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
