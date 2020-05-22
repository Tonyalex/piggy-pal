import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'widgets.dart';

class AddPlan extends StatefulWidget {
  @override
  _AddPlanState createState() => _AddPlanState();
}

class _AddPlanState extends State<AddPlan> {
  int page;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[900],
        body: SafeArea(
      child: ListView(
        children: <Widget>[
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 28.0),
            child: Text(
              'Add a plan',
              style: GoogleFonts.raleway(
                textStyle: TextStyle(
                    color: Colors.white,
                    letterSpacing: .5,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
            ),
          ),
          InputField(input: 'Plan Name',),
          InputField(input: 'Target',),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 28.0),
            child: Text(
                'Add payment method',
                style: GoogleFonts.raleway(
                  textStyle: TextStyle(
                      color: Colors.white,
                      letterSpacing: .5,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
          ),
          InputField(input: 'card number',),
          InputField(input: 'cvv',),
          InputField(input: 'expiry date',),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: RaisedButton(
              onPressed: (){},
              child: Text(
              'Add Plan',
              style: GoogleFonts.raleway(
                textStyle: TextStyle(
                    color: Colors.black,
                    letterSpacing: .5,
                    fontSize: 17.5
                    ),
              ),
            ),
              ),
          ),
        ],
      ),
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

