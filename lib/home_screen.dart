import 'package:flutter/material.dart';
import 'package:gs_quiz/aboutUs.dart';
import 'package:gs_quiz/levels.dart';
import 'package:gs_quiz/main_screen.dart';
import 'dart:io';
import 'package:share/share.dart';

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
        backgroundColor: Colors.redAccent,
      ),
      body: Stack(
        children: <Widget>[
          new Container(
            decoration: BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/bg.jpg"),
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
                        color: Colors.redAccent,
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) => MainScreen(),
                              ));
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
                        color: Colors.redAccent,
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) => Levels(),
                              ));
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: RaisedButton(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "ABOUT US",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        color: Colors.redAccent,
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AboutUs()));
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: RaisedButton(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "SHARE",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      color: Colors.redAccent,
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      onPressed: () {
                        final RenderBox box = context.findRenderObject();
                        Share.share(
                            'For shareable link, App needs to be uploaded on PlayStore',
                            subject: 'Share App',
                            sharePositionOrigin:
                                box.localToGlobal(Offset.zero) & box.size);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: RaisedButton(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "EXIT",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        color: Colors.redAccent,
                        elevation: 10.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        onPressed: () => exit(0)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
