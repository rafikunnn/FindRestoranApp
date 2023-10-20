import 'package:flutter_application_1/detail/bakso.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/LandingPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LandingPage(),
        theme: ThemeData(
            brightness: Brightness.light, primarySwatch: Colors.amber));
  }
}
