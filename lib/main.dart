import 'package:flutter/material.dart';
import 'package:loginui/secondpage.dart';
import 'loginpage.dart';
import 'homepage.dart';
import 'secondpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = {
    loginpage.tag:(context) => loginpage(),
    HomePage.tag:(context) => HomePage(),
    SecondPage.tag:(context)=> SecondPage(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ARMY'S PAGE",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        fontFamily: 'Nunito'
      ),
      home: loginpage(),
      routes: routes,
    );
  }
}
