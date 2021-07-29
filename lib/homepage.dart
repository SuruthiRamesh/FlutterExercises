import 'package:flutter/material.dart';
import 'package:loginui/secondpage.dart';
class HomePage extends StatelessWidget {
  static String tag = 'home-page';


  @override
  Widget build(BuildContext context) {
    final invite = Hero(tag: 'hero', child:Padding(
      padding: EdgeInsets.all(17),
      child: CircleAvatar(
        radius: 150,
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage('assets/pic2.jpg'),
      ),
    ));
    final Welcome = Padding(padding: EdgeInsets.all(10),
    child: Text('Welcome Army',style: TextStyle(color: Colors.purple,fontSize: 28)),
    );
    final BODY=Padding(padding: EdgeInsets.all(15),
    child:RaisedButton(
      child: Text('Press here'),
      onPressed: (){
        Navigator.of(context).pushNamed(SecondPage.tag);
      },
    )
    );
    return Scaffold(
      body:Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(28),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors:[ Colors.purpleAccent,
            Colors.pinkAccent,
          ]),
        ),
        child: Column(
          children: [invite,Welcome,BODY],
        ),
      )
    );
  }
}
