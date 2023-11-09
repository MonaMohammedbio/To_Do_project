import 'package:flutter/material.dart';
import 'package:project/View_model/view_model.dart';
import 'package:project/screens/Splash%20Screen/Splash_screen.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(ChangeNotifierProvider(create: (context)=>ViewModel(),child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
    );
  }
}
