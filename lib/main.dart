
import 'package:flutter/material.dart';

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
      'What\'s you favourite color?',
      'What\'s you favourite animal?'
    ];
    return   MaterialApp(home: Scaffold(
      appBar: AppBar(title: const Text('My First App'),),
      body: Column(
        children:  [
           Text(_questions[_questionInex]),
          ElevatedButton(child: const Text('Answer 1'),
          onPressed: _answerQuestion,),
           ElevatedButton(child: const Text('Answer 2'),
          onPressed: ()=> debugPrint('Answer Choosen 2') ,),
           ElevatedButton(child: const Text('Answer 3'),
          onPressed: () {
            debugPrint('Answer Choosen 3');
          },)
        ],
      ),
      ), );
  }
}