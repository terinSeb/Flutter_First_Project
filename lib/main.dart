

import 'package:flutter/material.dart';

void main(){
runApp( const MyApp());
}

class MyApp extends StatelessWidget{

  const MyApp({Key? key}) : super(key: key);
  void answerQuestion(){
  debugPrint('Answer Choosen');
}

  @override
  Widget build(BuildContext context){
    return   MaterialApp(home: Scaffold(
      appBar: AppBar(title: const Text('My First App'),),
      body: Column(
        children:  [
          const Text('The Question'),
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