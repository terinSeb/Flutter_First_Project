
import 'package:flutter/material.dart';

void main(){
runApp(  const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({Key? key}) : super(key: key);

@override
State<StatefulWidget> createState(){
  return MyAppState();
}
}
class MyAppState extends State<MyApp>{
  
  var questionInex = 0;
  
  void answerQuestion(){
    setState((){
questionInex = questionInex +1;
  });
  
  debugPrint('Answer Choosen');
}

  @override
  Widget build(BuildContext context){
    var questions =[
      'What\'s you favourite color?',
      'What\'s you favourite animal?'
    ];
    return   MaterialApp(home: Scaffold(
      appBar: AppBar(title: const Text('My First App'),),
      body: Column(
        children:  [
           Text(questions[questionInex]),
          ElevatedButton(child: const Text('Answer 1'),
          onPressed: answerQuestion,),
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