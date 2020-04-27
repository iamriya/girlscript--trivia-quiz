import 'dart:convert';
import 'package:gs_quiz/models/quiz.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final String url ='https://opentdb.com/api.php?amount=20&difficulty=easy&type=multiple';
  Quiz quiz;
  List<Results> results;

  @override
  Widget build(BuildContext context) {

    Future<void> fetchQuestions() async{
      var response = await http.get(url);
      var jsonData = json.decode(response.body);
      quiz = Quiz.fromJson(jsonData);
      results = quiz.results;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('TRIVIA',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
      // body: FutureBuilder(
      //   future: fetchQuestions(),
      //   builder: (BuildContext context, AsyncSnapshot snapshot){
          
      //   },
      // ),
    );
  }
}