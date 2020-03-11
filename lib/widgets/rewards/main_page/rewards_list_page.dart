import 'package:flutter/material.dart';
import 'package:referral_app/widgets/header.dart';
import 'package:referral_app/widgets/rewards/main_page/rewards.dart';

class RewardsListPage extends StatelessWidget {
  List<Rewards> rewards;
  
  RewardsListPage({this.rewards});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView.builder(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height / 10,
            left: MediaQuery.of(context).size.width * 0.05,
            right: MediaQuery.of(context).size.width * 0.05,
          ),
          itemCount: rewards.length,
          itemBuilder: (BuildContext context, int index) {
          return rewards[index];
         },
        ),
        Header('Shop', 3000),
      ],
    );
  }
}