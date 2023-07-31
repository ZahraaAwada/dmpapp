import 'package:dmp_app/screens/board.dart';
import 'package:dmp_app/screens/dashboard.dart';
import 'package:dmp_app/screens/orders/navigate.dart';
import 'package:flutter/material.dart';

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
        primaryColor: Color(0xFFABB0AF),
        colorScheme: const ColorScheme.light(
          //secondary: ,
          primary: Color(0xFFABB0AF),
        ),
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,

      home: Navigate(),
    );
  }
}