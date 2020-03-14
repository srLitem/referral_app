import 'package:flutter/material.dart';

//* Class to show the basic header with the name of the page
//* and the amount of points the user has

class Header extends StatelessWidget {
  @required
  final String title;
  @required
  final int points;

  Header(this.title, this.points);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      alignment: Alignment.topCenter,
      height: MediaQuery.of(context).size.height / 10,
      child: Padding(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.08,
          right: MediaQuery.of(context).size.width * 0.08,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //* Title of the header
              Text(
                title, 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              //*Balance and wallet icon
              Row(children: <Widget>[   
                Icon(
                  Icons.account_balance_wallet,
                  color: Color.fromRGBO(75, 40, 195, 1), //TODO: Change for theme picker
                ),
                Text(
                  '$points points',
                  style: TextStyle(
                    color: Color.fromRGBO(75, 40, 195, 1), //TODO: Change for theme picker
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
