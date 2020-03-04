import 'package:flutter/material.dart';
import 'package:referral_app/widgets/candidates/candidates_page.dart';

class Structure extends StatefulWidget {

  @override
  _StructureState createState() => _StructureState();
}

class _StructureState extends State<Structure> {

  int _index_page = 0; //Start the app in candidates

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false, //*Avoids the keyboard from pushing the widgets on the screen
      body: bottomList(_index_page),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTapped, //Calling the function to change the index
        currentIndex: _index_page,
        selectedItemColor: Colors.red,
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          title: Text('Candidates'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          title: Text('Scoreboard'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          title: Text('Shop'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          title: Text('More'),
        ),
        ],
      ),
    );
  }

  void onTapped(int index){ //*Function to change the screen with the BottomBar
    setState(() {
      _index_page = index;
    });
  }

  Widget bottomList(int index){
    List<Widget> list = [ //*Array with all the possible pages
      CandidatesPage('Candidates'),
      CandidatesPage('Scoreboard'),
      CandidatesPage('Shop'),
      CandidatesPage('More'),
    ];
    return list[index];
  }

}