
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';



class Quiz extends StatelessWidget{
  final List<Map<String,Object>> questions;
  final Function answerQuestion;
  final int questionInex;
const Quiz({Key? key, required this.questions,required this.answerQuestion,
required this.questionInex}) : super(key: key);
@override
  Widget build(BuildContext context) {
  return Column(
        children:  [
           Question(questionText :questions[questionInex]['questionText'] as String, ),
           ...(questions[questionInex]['answers'] as List<Map<String,Object>>).map((questAnswer) {
return Answer(selectHandler:()=> answerQuestion(questAnswer['score']),
finalAnswer: questAnswer['text'] as String, );
           }).toList(),          
        ],
      );
}
}