import 'package:flutter/material.dart';
import 'package:gs_quiz/main_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'TRIVIA',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        children: <Widget>[
          new Container(
            decoration: BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/background.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: new Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    height: 30.0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: RaisedButton(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "START QUIZ",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        color: Colors.blue,
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainScreen()));
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: RaisedButton(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "LEVELS",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        color: Colors.blue,
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0)),
                        onPressed: () {}),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: RaisedButton(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "ABOUT US",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        color: Colors.blue,
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0)),
                        onPressed: () {}),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: RaisedButton(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "SHARE",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        color: Colors.blue,
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0)),
                        onPressed: () {}),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: RaisedButton(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "EXIT",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        color: Colors.blue,
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0)),
                        onPressed: () {}),
                  ),
                ], //Start Button
              ),
            ),
          ),
        ],
      ),
    );
  }
}
