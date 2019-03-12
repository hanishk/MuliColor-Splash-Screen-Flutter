import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white, Colors.black],
                    begin: Alignment.bottomLeft,
                    end: Alignment.bottomRight)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Click here to Continue",
                style: TextStyle(fontSize: 20.0, color: Colors.deepOrange),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 55.0,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  iconSize: 65.0,
                  alignment: Alignment.center,
                  icon: (Icon(Icons.arrow_left, color: Colors.deepOrange[500])),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
