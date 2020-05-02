import 'package:flutter/material.dart';

class QuizProvider extends ChangeNotifier {
  String _level = 'easy';

  QuizProvider.initialize();

  String get level => _level;

  setLevel(String level) {
    _level = level;
    notifyListeners();
  }
}
