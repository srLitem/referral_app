import 'package:flutter/material.dart';
import 'package:referral_app/widgets/candidates/main_page/candidates.dart';
import 'package:referral_app/widgets/candidates/main_page/candidates_list_page.dart';

class Structure extends StatefulWidget {
  @override
  _StructureState createState() => _StructureState();
}

class _StructureState extends State<Structure> {
  int _index_page = 0; //Start the app in candidates

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false, //*Avoids the keyboard from pushing the widgets on the screen
        body: bottomList(_index_page),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: onTapped, //Calling the function to change the index
          currentIndex: _index_page,
          selectedItemColor: Colors.green,
          elevation: 8,
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
      ),
    );
  }

  void onTapped(int index) {
    //*Function to change the screen with the BottomBar
    setState(() {
      _index_page = index;
    });
  }

  Widget bottomList(int index) {
    List<Candidates> mock_candidates = [ //!Mock data
    Candidates( 
      date: '26 Nov',
      name: 'Ricardo Van Lemmen',
      step: 'Register',
      points: 20,
      backgroundColor: Color.fromRGBO(55, 120, 255, 1),
    ),
    Candidates( 
      date: '2 Dec',
      name: 'Omar Guerrero',
      step: 'Register',
      points: 10,
      backgroundColor: Color.fromRGBO(218, 83, 44, 1),
    ),
    Candidates( 
      date: '3 Dec',
      name: 'Monika Rutten',
      step: 'Register',
      points: 30,
      backgroundColor: Color.fromRGBO(178, 108, 238, 1),
    ),
    Candidates( 
      date: '20 Feb',
      name: 'Eef Smeets',
      step: 'Register',
      points: 30,
      backgroundColor: Color.fromRGBO(255, 71, 114, 1),
    ),
    Candidates( 
      date: '20 Mar',
      name: 'Juanito Benitez',
      step: 'Register',
      points: 30,
      backgroundColor: Color.fromRGBO(55, 120, 255, 1),
    ),
    ];
    List<Widget> list = [
      //*Array with all the possible pages
      CandidatesListPage(
        candidates: mock_candidates,
      ),
      CandidatesListPage(), // !! Mock page to show something, must change
      CandidatesListPage(), // !! Mock page to show something, must change
      CandidatesListPage(), // !! Mock page to show something, must change
    ];
    return list[index];
  }
}
