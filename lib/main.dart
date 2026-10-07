import 'package:flutter/material.dart';
import 'package:foodapp/presentaion/landing/walkthrough_three_screen.dart';
import 'package:foodapp/presentaion/landing/walkthrough_two_screen.dart';

import 'presentaion/landing/walkthrough.dart';
import 'presentaion/landing/walkthrough_one_screen.dart';
import 'presentaion/landing/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      home: Walkthrough(),
    );
  }
}