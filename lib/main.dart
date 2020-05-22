import 'package:flutter/material.dart';
import 'package:piggy_pal/ui/signup.dart';
import 'package:piggy_pal/ui/signin.dart';
import 'package:piggy_pal/ui/home.dart';
import 'package:piggy_pal/ui/targets.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Targets(),
    );
  }
 
}
