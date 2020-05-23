import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'widgets.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: SafeArea(
      child: ListView(
        children: <Widget>[

          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              'Hello Andrei!',
              style: GoogleFonts.raleway(
                textStyle: TextStyle(color: Colors.black, letterSpacing: .5, fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ),
          Center(
            child: ChestCard(chestName: 'Total Treasure', amount: 'N200 000', color: Colors.black,)
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'All Chests',
              style: GoogleFonts.raleway(
                textStyle: TextStyle(color: Colors.black, letterSpacing: .5, fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
          ),
          CarouselSlider(
            options: CarouselOptions(
              enableInfiniteScroll: false,
              aspectRatio: 2.2,
              enlargeCenterPage: true,
            ),
            items: [
              ChestCard(chestName: 'AutoChest', amount: 'N20 000', color: Colors.deepPurple[900]),
              ChestCard(chestName: 'Wallet Chest', amount: 'N20 000', color: Colors.blueAccent.shade700),
              ChestCard(chestName: 'Savings Chest', amount: 'N20 000', color: Colors.black87),
              // ChestCard(color: Colors.deepPurple[900]),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'Services',
              style: GoogleFonts.raleway(
                textStyle: TextStyle(color: Colors.black, letterSpacing: .5, fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
          ),
        Service(service: 'Pay Your Bills',),
        Service(service: 'Buy Airtime',),
        Service(service: 'Transfer money',),
        Service(service: 'Invest',),
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
        ),
    );
  }
}

