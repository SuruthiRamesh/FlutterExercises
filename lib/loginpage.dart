import 'dart:ui';

import 'package:flutter/material.dart';
import 'homepage.dart';

class loginpage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child:CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 150.0,
        backgroundImage: AssetImage('assets/pic1.jpg'),
      )
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'example@gmail.com',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      ),
    );

    final Password = TextFormField(
      autofocus: false,
      initialValue: 'Passwordplease',
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      ),

    );

    final loginButton = Padding(padding: EdgeInsets.symmetric(vertical: 15),
    child: RaisedButton(onPressed: (){
      Navigator.of(context).pushNamed(HomePage.tag);
    },child: Text('LOG IN',style: TextStyle(color: Colors.purpleAccent),
    ),
    padding: EdgeInsets.all(10),
      color: Colors.blue,
    ),
    );

    final forgetLabel = FlatButton(onPressed: (){}, child: Text('Forgot Password???',style: TextStyle(color: Colors.black),));
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 20,right: 20),
          children: [
            logo,
            SizedBox(height: 45),
            email,
            SizedBox(height: 8),
            Password,
            SizedBox(height: 22),
            loginButton,
            forgetLabel,
          ],
        ),
      ),
    );

  }
}
