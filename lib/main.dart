import 'package:flutter/material.dart';
import 'package:gs_quiz/home_screen.dart';
import 'package:gs_quiz/providers/quizProvider.dart';
import 'package:provider/provider.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(TriviaQuizApp());

class TriviaQuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => QuizProvider.initialize()),
      ],
      child: MaterialApp(
        home: MyApp(),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      imageBackground: AssetImage("assets/bg.jpg"),
      seconds: 5,
      navigateAfterSeconds: new HomeScreen(),
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      loaderColor: Colors.redAccent,
    );
  }
}
