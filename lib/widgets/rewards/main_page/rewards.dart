import 'package:flutter/material.dart';
import 'package:referral_app/widgets/rewards/details/rewards_details_page.dart';

class Rewards extends StatefulWidget {
  @required
  final String picture;
  @required
  final String name;
  @required
  final int points;
  @required
  final String description;

  Rewards({this.picture, this.name, this.points, this.description});

  @override
  _RewardsState createState() => _RewardsState();
}



class _RewardsState extends State<Rewards> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: goToDetails,
        child: Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            //*Shadowing
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 2.0,
              spreadRadius: 1.0,
              offset: Offset(1.0, 1.0),
            ),
          ],
        ),
        child: Row(
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/img/pug.jpg'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    //*Name of the reward
                    widget.name,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    //*Points price of the reward
                    '${widget.points} points',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 19,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

    void goToDetails(){ //* Allows to open de details page of the selected candidate
    Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
            RewardsDetailsPage(
              picture: widget.picture,
              points: widget.points,
              description: widget.description,
              name: widget.name,
            ),
          ),
        );
  }

}
