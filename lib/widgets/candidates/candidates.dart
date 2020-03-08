import 'package:flutter/material.dart';

class Candidates extends StatefulWidget {
  @required var date;
  @required String name;
  @required var step;
  @required int points;
  @required Color background_color;

  Candidates({this.name, this.points, this.step, this.date, this.background_color});

  @override
  _CandidatesState createState() => _CandidatesState();
}

class _CandidatesState extends State<Candidates> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: widget.background_color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(widget.date, style: TextStyle(color: Colors.white),),
              Text(widget.points.toString(), style: TextStyle(color: Colors.white),)
              ],
          ),
          Text(widget.name,style: TextStyle(color: Colors.white),),
          Text(widget.step, style: TextStyle(color: Colors.white),)
        ],
      ),
    );
  }
}
