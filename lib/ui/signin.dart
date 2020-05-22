import 'package:flutter/material.dart';
import 'widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[900],
      body: SafeArea(
      child: ListView(
        children: <Widget>[
          Logo(),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 28.0),
            child: Text(
              'Sign In',
              style: GoogleFonts.raleway(
                textStyle: TextStyle(
                    color: Colors.white,
                    letterSpacing: .5,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
            ),
          ),
          InputField(input: 'Email',),
          InputField(input: 'Password',),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: RaisedButton(
              color: Colors.white,
              onPressed: (){},
              child: Text(
              'Sign In',
              style: GoogleFonts.raleway(
                textStyle: TextStyle(
                    color: Colors.deepPurple[900],
                    letterSpacing: .5,
                    fontSize: 17.5),
              ),
            ),
              ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Don't yet have an account?", style: TextStyle(color: Colors.white.withOpacity(0.45))),
              SizedBox(width: 10),
              Text("Sign Up", style: TextStyle(color: Colors.white))
            ]
          )
        ],
      ),
    ));
  }
}

