
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';


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
  final _questions = const [
      {'questionText': 'What\'s you favourite color?',
      'answers': [{'text': 'Bule','score':1},{'text':'Black','score':10},{'text':'Green','score':2},{'text':'Orange','score':1}]},
       {'questionText': 'What\'s you favourite animal?',
      'answers': [{'text': 'Girraff','score':10},{'text': 'Rabbit','score':7},{'text': 'Dog','score':1},{'text': 'Cat','score':3}]}    ,
      {'questionText': 'Who\'s your favourite instructor?',
      'answers': [{'text': 'Max','score':10},{'text': 'Sam','score':7},{'text': 'Liza','score':5},{'text': 'John','score':3}]}            
    ];
  var _questionInex = 0;
  int _totalScore = 0;
  void _answerQuestion(int score){
    setState((){
        _questionInex = _questionInex +1;
        _totalScore = _totalScore + score;
  });
  
  debugPrint('Answer Choosen');

  if(_questionInex < _questions.length){
    debugPrint('We have more Questions');
  }
}

  @override
  Widget build(BuildContext context){
    
    return   MaterialApp(home: Scaffold(
      appBar: AppBar(title: const Text('My First App'),),
      body: _questionInex < _questions.length ? 
      Quiz(questions: _questions,answerQuestion:  _answerQuestion,questionInex: _questionInex,) 
      :  Result(resultScore:_totalScore,),
      ), );
  }
}