import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @required String title = 'Screen';
  @required int points = 0;

  Header(this.title, this.points);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: MediaQuery.of(context).size.height / 10,
      child: Padding(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.05,
          right: MediaQuery.of(context).size.width * 0.05,
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
              Row(children: <Widget>[ //*Balance and wallet icon
                Icon(
                  Icons.account_balance_wallet,
                  color: Theme.of(context).primaryColor,
                ),
                Text(
                  '$points points',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
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
