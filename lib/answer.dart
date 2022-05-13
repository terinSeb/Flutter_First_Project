
import 'package:flutter/material.dart';

class Answer  extends StatelessWidget {
  final VoidCallback selectHandler; 
  final String finalAnswer;
  const Answer({ Key? key, required this.selectHandler, required this.finalAnswer }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(      
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
        child:  Text(finalAnswer),
        onPressed: selectHandler,),
    );
  }
}