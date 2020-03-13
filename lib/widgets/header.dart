import 'package:flutter/material.dart';

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
              Text(
                title, //* Title of the header
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Row(children: <Widget>[
                //*Balance and wallet icon
                Icon(
                  Icons.account_balance_wallet,
                  color: Color.fromRGBO(75, 40, 195, 1),
                ),
                Text(
                  '$points points',
                  style: TextStyle(
                    color: Color.fromRGBO(75, 40, 195, 1),
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
