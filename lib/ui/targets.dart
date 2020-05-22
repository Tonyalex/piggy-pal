import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'widgets.dart';

class Targets extends StatefulWidget {
  @override
  _TargetsState createState() => _TargetsState();
}

class _TargetsState extends State<Targets> {
  int page;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: new ListView(children: <Widget>[
        Padding(
            padding: const EdgeInsets.fromLTRB(28.0, 20, 0, 5),
            child: Text(
              'Targets',
              style: GoogleFonts.raleway(
                textStyle: TextStyle(color: Colors.black, letterSpacing: .5, fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
          ),
        Plan(title: 'Car Plan', color: Colors.black,),
        Plan(title: 'MacBook Pro', color: Colors.deepPurple[900]),
        Plan(title: 'School fees', color: Colors.black,),
        Plan(title: 'house Plan', color: Colors.deepPurple[900]),
        Plan(title: 'iPhone 11 Pro Max', color: Colors.black,),
        Plan(title: 'Car Plan', color: Colors.deepPurple[900]),
        ]),
    ),
    bottomNavigationBar: CurvedNavigationBar(
          // key: _bottomNavigationKey,
          items: <Widget>[
            Icon(Icons.add, size: 30, color: Colors.white),
            Icon(Icons.home, size: 30, color: Colors.white,),
            Icon(Icons.track_changes, size: 30, color: Colors.white),
          ],
          onTap: (index) {
            setState(() {
              page = index;
            });
          },
          color: Colors.black,
          height: 50,
          buttonBackgroundColor: Colors.black,
          animationDuration: Duration(milliseconds: 300),
          backgroundColor: Colors.white.withOpacity(0),
        ),
    );
  }
}
