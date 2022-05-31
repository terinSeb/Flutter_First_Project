import 'package:flutter/material.dart';

class Result extends StatelessWidget{
 final int resultScore;
   const Result({required this.resultScore,Key? key}) : super(key: key);

 String get resultText{
   String resultString = "You did it";
   if(resultScore <= 8){
     resultString = 'You are awesome and innocent';
   } else  if(resultScore <= 12){
       resultString = 'Pretty likable';
   }
    else  if(resultScore <= 16){
       resultString = 'you are... strange?';
   } else  {
       resultString = 'you are bad';
   }
   return resultString;
 }

  @override
  Widget build(BuildContext context){
return  Center(child:
 Text(resultText,
 style: const TextStyle(fontSize:36, fontWeight: FontWeight.bold ),
 textAlign: TextAlign.center,),);
  }
}