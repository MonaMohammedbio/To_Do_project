import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project/screens/Login%20Screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),
      ()=> Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> LoginScreen()
    )
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          color:Colors.lightBlueAccent,
          child: Center(
            child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  SizedBox(height: 150,width: 150,child:Image(image: AssetImage('images/checklist.png')) ,),


                ]),
          ),
        ));
  }
}
