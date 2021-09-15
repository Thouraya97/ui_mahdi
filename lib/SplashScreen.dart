import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ui_mahdi/Pages/LogIn.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashScreen();
  }
}

class _SplashScreen extends State<SplashScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3283c),
      body: Center(
        
        child: Icon(Icons.phone_android,),
      ),
    );
  }

  void NavigateToLogIn() {
    Timer(Duration(seconds: 5), () {
      
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => LogInScreen()));
     
      }
    );
  }

  @override
  void initState() {
    super.initState();
    NavigateToLogIn();
  }

 
}
