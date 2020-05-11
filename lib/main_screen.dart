import 'dart:convert';
import 'package:gs_quiz/models/quiz.dart';
import 'package:flutter/material.dart';
import 'package:gs_quiz/providers/quizProvider.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String url = '';
  Quiz quiz;
  List<Results> results;
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getLevel();
    });
  }

  void getLevel() {
    QuizProvider _provider = Provider.of<QuizProvider>(context, listen: false);
    setState(() {
      url =
          'https://opentdb.com/api.php?amount=20&difficulty=${_provider.level}&type=multiple';
    });
  }

  @override
  Widget build(BuildContext context) {
    String _level = Provider.of<QuizProvider>(context, listen: false).level;
    Future<void> fetchQuestions() async {
      var response = await http.get(url); //String
      var jsonData = json.decode(response.body); //json - Map<String, dynamic>
      quiz = Quiz.fromJson(jsonData); //Quiz
      results = quiz.results; //Only storing results data
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'QUIZ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: RefreshIndicator(
        onRefresh: fetchQuestions,
        child: FutureBuilder(
          future: fetchQuestions(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Container(
                child: getQuestionsList(_level),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  } //build method ends

  ListView getQuestionsList(String level) {
    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ExpansionTile(
            title: ListTile(
              title: Text(
                results[index].question,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(results[index].category),
            ),
            children: results[index].allAnswers.map((option) {
              return AnswerWidget(results, index, option);
            }).toList(),
          ),
        );
      },
    );
  } //getQuestionsList () ends
} //state class end

class AnswerWidget extends StatefulWidget {
  final List<Results> results;
  final int index;
  final String option;

  AnswerWidget(this.results, this.index, this.option);

  @override
  _AnswerWidgetState createState() => _AnswerWidgetState();
}

class _AnswerWidgetState extends State<AnswerWidget> {
  Color tick;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        setState(() {
          if (widget.option == widget.results[widget.index].correctAnswer) {
            tick = Colors.green;
          } else {
            tick = Colors.red;
          }
        });
      },
      title: Text(
        widget.option,
        textAlign: TextAlign.center,
        style: TextStyle(color: tick),
      ),
    );
  }
}
