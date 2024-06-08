import 'package:flutter/material.dart';
import 'package:quiz_app/quiz..dart';
import 'package:quiz_app/models/questionsdata.dart';
import 'package:quiz_app/models/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;
  List<Map<String,Object>> getSummaryData(){
    final List<Map<String,Object>> summary =[];
    for(var i=0;i<chosenAnswers.length;i++)
      {
        summary.add({
          'q1':i,
          'question':questions[i].text,
          'correctans':questions[i].answers[0],
          'useranswer':chosenAnswers[i],
        });
      }
    return summary;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:CrossAxisAlignment.center ,
        children: [
           Text('You answer x correct!!!')
          ,
          SizedBox(height: 30,),
          ListView(),
          SizedBox(height: 25,),
          TextButton(onPressed: (){}, child: Text('Restart Quiz')),
        ],
      ),
    );
  }
}
