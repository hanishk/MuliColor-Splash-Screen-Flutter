import 'package:flutter/material.dart';
import 'package:splash_screen/MainPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff622F74),
        accentColor: Colors.orange,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget multibackground() {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [(Color(0xff18FFFF)), (Colors.purple[400])],
              begin: Alignment.bottomLeft,
              end: Alignment.bottomRight)),
    );
  }

  Widget nextButton() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            "Click here to Continue",
            style: TextStyle(fontSize: 20.0, color: Colors.deepOrange),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 20.0),
        ),
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 55.0,
          child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainPage()),
              );
            },
            iconSize: 65.0,
            alignment: Alignment.center,
            icon: Icon(
              Icons.forward,
              color: Colors.deepOrange,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[multibackground(), nextButton()],
      ),
    );
  }
}
