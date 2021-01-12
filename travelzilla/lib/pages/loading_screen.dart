import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';




class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      backgroundColor: Colors.white,
      title: Text('Travelzilla', style: TextStyle(color: Colors.brown[900],
          fontWeight: FontWeight.w800,
          fontFamily: 'Times New Roman',
          fontStyle: FontStyle.italic,
          fontSize: 53.0)),
      image: Image.asset('assets/bus 2.gif'),
      photoSize: 156.0,
      navigateAfterSeconds: '/home',
    );
  }
}
