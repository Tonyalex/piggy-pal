import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class InputField extends StatelessWidget {
  final String input;
  const InputField({
    this.input,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(28.0, 5, 28, 5),
      child: TextField(
        decoration: InputDecoration(
            hintText: '  ${this.input}',
            hintStyle: GoogleFonts.poppins(color: Colors.white, fontSize: 12)),
      ),
    );
  }
}

class DarkInputField extends StatelessWidget {
  final String input;
  const DarkInputField({
    this.input,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(28.0, 5, 28, 5),
      child: TextField(
        decoration: InputDecoration(
            hintText: '  ${this.input}',
            hintStyle: GoogleFonts.poppins(color: Colors.black, fontSize: 12)),
      ),
    );
  }
}


class Logo extends StatelessWidget {
  const Logo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Text(
          'MyChest',
          style: GoogleFonts.raleway(
            textStyle: TextStyle(
                color: Colors.white,
                letterSpacing: .5,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
        ),
        SizedBox(width: 10),
        Icon(
          Icons.monetization_on,
          color: Colors.white,
        ),
      ]),
    );
  }
}

class Service extends StatelessWidget {
  final String service;
  const Service({
    this.service,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
          color: Colors.deepPurple[900],
          child: ListTile(
            contentPadding: const EdgeInsets.all(15),
            leading: Icon(Icons.monetization_on, color: Colors.white),
            title: Text(
              this.service,
              style: GoogleFonts.raleway(
                textStyle: TextStyle(color: Colors.white),
              ),
            ),
          )),
    );
  }
}

class ChestCard extends StatelessWidget {
  final Color color;
  final String chestName, amount;
  const ChestCard({Key key, this.chestName, this.amount, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(.0),
      child: new Container(
        height: 150,
        width: 300,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(17.5),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  this.chestName,
                  style: GoogleFonts.raleway(
                    textStyle: TextStyle(
                        color: Colors.white, letterSpacing: .5, fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  this.amount,
                  style: GoogleFonts.raleway(
                    textStyle: TextStyle(
                        color: Colors.white,
                        letterSpacing: .5,
                        fontWeight: FontWeight.bold,
                        fontSize: 28),
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'Piggy Chest',
                        style: GoogleFonts.raleway(
                          textStyle: TextStyle(
                            color: Colors.white,
                            letterSpacing: .5,
                            fontSize: 16,
                          ),
                        ),
                      )
                    ])
              ]),
        ),
      ),
    );
  }
}

class Plan extends StatelessWidget {
  final String title;
  final Color color;

  const Plan({Key key, @required this.title, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 28, 10, 10),
      child: Container(
        // height: 300,
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(10)
        ),
          child: Column(
            children: <Widget>[
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
            this.title,
            style: GoogleFonts.raleway(
                textStyle: TextStyle(
                    color: Colors.white,
                    letterSpacing: .5,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.5),
            ),
          ),
              ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            DetailCard(
              subject: 'target',
              price: 'N50 M',
            ),
            DetailCard(
              subject: 'balance',
              price: 'N25 M',
            )
          ],
        ),
        new CircularPercentIndicator(
          radius: 120.0,
          lineWidth: 13.0,
          animation: true,
          percent: 0.5,
          center: new Text(
            "50.0%",
            style: new TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
          footer: new Text(
            "Progress",
            style: new TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17.0),
          ),
          circularStrokeCap: CircularStrokeCap.round,
          progressColor: Colors.green,
        ),
        SizedBox(height: 20)
      ])),
    );
  }
}

class DetailCard extends StatelessWidget {
  final String price, subject;
  const DetailCard({
    this.price,
    this.subject,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Text(
        this.price,
        style: GoogleFonts.raleway(
          textStyle: TextStyle(
              color: Colors.white,
              letterSpacing: .5,
              fontWeight: FontWeight.bold,
              fontSize: 17),
        ),
      ),
      Text(
        this.subject,
        style: GoogleFonts.raleway(
          textStyle: TextStyle(
              color: Colors.white,
              letterSpacing: .5,
              fontSize: 15),
        ),
      )
    ]);
  }
}
