import 'package:flutter/material.dart';
class SecondPage extends StatelessWidget {
  static String tag = 'secondpage';


  @override
  Widget build(BuildContext context) {
    final invite = Hero(tag: 'hero', child:Padding(
      padding: EdgeInsets.all(17),
      child: CircleAvatar(
        radius: 150,
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage('assets/pic1.jpg'),
      ),
    ));
    final Welcome = Padding(padding: EdgeInsets.all(10),
      child: Text('Welcome To Second Page',style: TextStyle(color: Colors.purple,fontSize: 28)),
    );
    final BODY=Padding(padding: EdgeInsets.all(15),
      child: Text("Hello Army's hope you are alright!!!!!!!!",style: TextStyle(color: Colors.purple,fontSize: 15),),);
    return Scaffold(
        body:Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(28),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors:[ Colors.yellow,
              Colors.red,
            ]),
          ),
          child: Column(
            children: [invite,Welcome,BODY],
          ),
        )
    );
  }
}

