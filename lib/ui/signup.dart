import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[900],
        body: SafeArea(
      child: ListView(
        children: <Widget>[
          Logo(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 28.0),
            child: Text(
              'Sign Up',
              style: GoogleFonts.raleway(
                textStyle: TextStyle(
                    color: Colors.white,
                    letterSpacing: .5,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
            ),
          ),
          InputField(input: 'Fisrt Name',),
          InputField(input: 'Last Name',),
          InputField(input: 'Email',),
          InputField(input: 'Password',),
          InputField(input: 'password again',),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: RaisedButton(
              onPressed: (){},
              child: Text(
              'Sign Up',
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Already have an account?", style: TextStyle(color: Colors.white.withOpacity(0.45))),
              SizedBox(width: 10),
              Text("Sign In", style: TextStyle(color: Colors.white))
            ]
          )
        ],
      ),
    ));
  }
}

