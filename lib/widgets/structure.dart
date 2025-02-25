import 'package:flutter/material.dart';
import 'package:referral_app/widgets/candidates/main_page/candidates.dart';
import 'package:referral_app/widgets/candidates/main_page/candidates_list_page.dart';
import 'package:referral_app/widgets/rewards/main_page/rewards.dart';
import 'package:referral_app/widgets/rewards/main_page/rewards_list_page.dart';

//* Widget to paint the basic structure of the app in a clenaer way
class Structure extends StatefulWidget {
  @override
  _StructureState createState() => _StructureState();
}

class _StructureState extends State<Structure> {
  int _indexPage = 0; //Start the app in candidates

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false, 
        body: bottomList(_indexPage),
        //* BottomNavigationBar with the lits of available screens
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: onTapped, //Calling the function to change the index
          currentIndex: _indexPage,
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

  //*Function to change the screen with the BottomBar
  void onTapped(int index) {
    setState(() {
      _indexPage = index;
    });
  }

  //* Function to return the list of available screens
  Widget bottomList(int index) {
    List<Candidates> mockCandidates = [ //!Mock data
    Candidates( 
      date: '26 Nov',
      name: 'Ricardo Van Lemmen',
      step: 'Register',
      points: 20,
      backgroundColor: Color.fromRGBO(94, 192, 210, 1),
    ),
    Candidates( 
      date: '2 Dec',
      name: 'Omar Guerrero',
      step: 'Register',
      points: 10,
      backgroundColor: Color.fromRGBO(210, 94, 127, 1),
    ),
    Candidates( 
      date: '3 Dec',
      name: 'Monika Rutten',
      step: 'Register',
      points: 30,
      backgroundColor: Color.fromRGBO(210, 118, 94, 1),
    ),
    Candidates( 
      date: '20 Feb',
      name: 'Eef Smeets',
      step: 'Register',
      points: 30,
      backgroundColor: Color.fromRGBO(159, 94, 210, 1),
    ),
    Candidates( 
      date: '20 Mar',
      name: 'Juanito Benitez',
      step: 'Register',
      points: 30,
      backgroundColor: Color.fromRGBO(94, 210, 144, 1),
    ),
    ];
    List<Rewards> mockRewards = [ //!Mock data
    Rewards(
      picture: 'https://www.pets4homes.co.uk/images/articles/4229/pugs-and-eye-disorders-recognising-theres-a-problem-595b4a467850f.jpg',
      name: 'Rewarderina',
      points: 150,
      description: 'Besides its weird appearence, this dog is a lil beauty, don\'t ya think?',
    ),
    Rewards(
      picture: 'https://i.picsum.photos/id/179/200/200.jpg',
      name: 'Rewardona',
      description: 'Besides its weird appearence, this dog is a lil beauty, don\'t ya think?',
      points: 200,
    ),
    Rewards(
      picture: 'https://i.picsum.photos/id/789/200/200.jpg',
      name: 'Rewarkis',
      points: 300,
      description: 'Besides its weird appearence, this dog is a lil beauty, don\'t ya think?',
    ),
    Rewards(
      picture: 'https://i.picsum.photos/id/350/200/200.jpg',
      name: 'Reward',
      points: 400,
      description: 'Besides its weird appearence, this dog is a lil beauty, don\'t ya think?',
    ),
    Rewards(
      picture: 'https://i.picsum.photos/id/577/200/200.jpg',
      name: 'Rewardtron',
      points: 500,
      description: 'Besides its weird appearence, this dog is a lil beauty, don\'t ya think?',
    ),
    ];
    List<Widget> list = [
      //*Array with all the possible pages
      CandidatesListPage(
        candidates: mockCandidates,
      ),
      CandidatesListPage(), // !! Mock page to show something, must change
      RewardsListPage(
        rewards: mockRewards,
      ),
      CandidatesListPage(), // !! Mock page to show something, must change
    ];
    return list[index];
  }
}
