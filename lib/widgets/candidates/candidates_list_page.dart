import 'package:flutter/material.dart';
import 'package:referral_app/widgets/candidates/candidates.dart';
import 'package:referral_app/widgets/header.dart';

class CandidatesListPage extends StatelessWidget {
  List<Candidates> candidates;
  
  CandidatesListPage({this.candidates});

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
          itemCount: candidates.length,
          itemBuilder: (BuildContext context, int index) {
          return candidates[index];
         },
        ),
        Header('Candidates', 3000),
      ],
    );
  }
}