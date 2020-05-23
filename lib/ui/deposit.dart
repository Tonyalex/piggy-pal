import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'widgets.dart';

class Deposit extends StatefulWidget {
  @override
  _DepositState createState() => _DepositState();
}

class _DepositState extends State<Deposit> {
  int _page;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: SafeArea(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 28.0),
            child: Text(
              'Deposit money',
              style: GoogleFonts.raleway(
                textStyle: TextStyle(
                    color: Colors.black,
                    letterSpacing: .5,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 28.0),
            child: Center(
              child: Text(
                'Savings Chest',
                style: GoogleFonts.raleway(
                  textStyle: TextStyle(
                      color: Colors.black,
                      letterSpacing: .5,
                      fontWeight: FontWeight.bold,
                      fontSize: 19),
                ),
              ),
            ),
          ),
          DarkInputField(input: 'amount',),
          DarkInputField(input: 'card number',),
          DarkInputField(input: 'cvv',),
          DarkInputField(input: 'expiry date',),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: RaisedButton(
              onPressed: (){},
              color: Colors.black,
              child: Text(
              'Save',
              style: GoogleFonts.raleway(
                textStyle: TextStyle(
                    color: Colors.white,
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
              _page = index;
            });
          },
          color: Colors.black,
          height: 50,
          buttonBackgroundColor: Colors.black,
          backgroundColor: Colors.white.withOpacity(0),
        ),);
  }
}

