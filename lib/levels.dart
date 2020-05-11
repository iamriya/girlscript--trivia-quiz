import 'package:flutter/material.dart';
import 'package:gs_quiz/providers/quizProvider.dart';
import 'package:provider/provider.dart';

class Levels extends StatefulWidget {
  Levels({Key key}) : super(key: key);

  @override
  _LevelsState createState() => _LevelsState();
}

class _LevelsState extends State<Levels> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  void initState() {
    super.initState();
  }

  void setLevel(String level, _context) {
    _displaySnackBar(_context, level);
    Provider.of<QuizProvider>(context, listen: false).setLevel(level);
  }

  void _displaySnackBar(BuildContext context, String level) {
    final snackBar = SnackBar(content: Text('You selected level ${level}'));
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
          title: Text(
            'Levels',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          backgroundColor: Colors.redAccent),
      body: Column(
        children: <Widget>[
          Card(
            child: ListTile(
              onTap: () {
                setLevel('easy', context);
              },
              title: Text(
                'EASY',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                setLevel('medium', context);
              },
              title: Text(
                'MEDIUM',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                setLevel('hard', context);
              },
              title: Text(
                'HARD',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
