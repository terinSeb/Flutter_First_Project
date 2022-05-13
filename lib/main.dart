
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';

import 'answer.dart';

void main(){
runApp(  const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({Key? key}) : super(key: key);

@override
State<StatefulWidget> createState(){
  return _MyAppState();
}
}
class _MyAppState extends State<MyApp>{
  
  var _questionInex = 0;
  
  void _answerQuestion(){
    setState((){
_questionInex = _questionInex +1;
  });
  
  debugPrint('Answer Choosen');
}

  @override
  Widget build(BuildContext context){
    var _questions =[
      {'questionText': 'What\'s you favourite color?',
      'answers': ['Bule','Black','Green','Orange']},
       {'questionText': 'What\'s you favourite animal?',
      'answers': ['Girraff','Rabbit','Dog','Cat']}    ,
      {'questionText': 'Who\'s your favourite instructor?',
      'answers': ['Max','Sam','Liza','John']}            
    ];
    return   MaterialApp(home: Scaffold(
      appBar: AppBar(title: const Text('My First App'),),
      body: Column(
        children:  [
           Question(questionText :_questions[_questionInex]['questionText'] as String, ),
           ...(_questions[_questionInex]['answers'] as List<String>).map((questAnswer) {
return Answer(selectHandler: _answerQuestion,finalAnswer: questAnswer, );
           }).toList(),
          // Answer(selectHandler: _answerQuestion, ),
          //  Answer(selectHandler: _answerQuestion),
          //  Answer(selectHandler: _answerQuestion),
        ],
      ),
      ), );
  }
}