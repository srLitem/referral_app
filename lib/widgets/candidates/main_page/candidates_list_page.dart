import 'package:flutter/material.dart';
import 'package:referral_app/widgets/candidates/main_page/candidates.dart';
import 'package:referral_app/widgets/header.dart';

//* Widget used to show the list of the candidates in the main page of the app
class CandidatesListPage extends StatelessWidget {
  final List<Candidates> candidates;
  
  CandidatesListPage({this.candidates});

  @override
  Widget build(BuildContext context) {
    return Stack(
      //* List generated with the candidates data List
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
        //* Header data and position in the stack
        Header('Candidates', 3000),
      ],
    );
  }
}