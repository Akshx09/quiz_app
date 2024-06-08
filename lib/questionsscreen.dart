import 'package:flutter/material.dart';
import 'package:quiz_app/answerbutton.dart';
import 'package:quiz_app/models/questionsdata.dart';
import 'package:google_fonts/google_fonts.dart';

class questionscreen extends StatefulWidget {
  const questionscreen({super.key, required this.onSelectAnswer});


  final void Function(String answer) onSelectAnswer;
  @override
  State<questionscreen> createState() => _questionscreenState();
}

class _questionscreenState extends State<questionscreen> {
  var currQuestionindex=0;

 void answerQuestion(String selectedAnswer) {
   widget.onSelectAnswer(selectedAnswer);
   setState(() {
     currQuestionindex=currQuestionindex+1;

   });

}
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currQuestionindex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(100.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(currentQuestion.text,style:GoogleFonts.romanesco(),),
            SizedBox(height: 20,),
            ...currentQuestion.shuffledAnswers.map((item){    //concept of speading
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: AnswerButton(item, (){
                  answerQuestion(item);
                } ),
              ); //dynamic generation
            }
            ),
          ],
        ),
      ),
    );
  }
}



// class _questionscreenState extends State<questionscreen> {
//   @override
//   Widget build(BuildContext context) {
//     final currentQuestion = questions[0];
//     return SizedBox(
//       width: double.infinity,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(currentQuestion.text,style: TextStyle(color: Colors.white),),
//           SizedBox(height: 20,),
//           AnswerButton(currentQuestion.answers[0],(){}),
//           AnswerButton(currentQuestion.answers[1],(){}),
//           AnswerButton(currentQuestion.answers[2],(){}),
//           AnswerButton(currentQuestion.answers[3],(){}),
//         ],
//       ),
//     );
//   }
// }