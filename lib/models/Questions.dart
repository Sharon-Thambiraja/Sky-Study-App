/*this code snippet defines the structure of a quiz question. 
It represents the fundamental data model that holds information about each question, 
including its content, possible answers, and the correct answer index.*/

import 'package:firebase_database/firebase_database.dart';

class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options});
}
