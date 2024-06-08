import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
  AnswerButton(this.answerText,this.onTap,{super.key});

  final String answerText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: onTap,
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 12.0,horizontal: 50.0),
          backgroundColor: Colors.white24,
          foregroundColor: Colors.purple.shade50,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          )
        ),
        child: Text(answerText,textAlign: TextAlign.center,));
  }

}