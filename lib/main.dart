import 'package:flutter/material.dart';
import 'package:moviesapp/pages/homepage/homepage.dart';
import 'package:moviesapp/welcomepage/welcomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      
      home: WelcomePage()
    );
  }
}

