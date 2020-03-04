import 'package:flutter/material.dart';

class CandidatesPage extends StatelessWidget {
  String name;

  CandidatesPage(this.name);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(name));
  }
}