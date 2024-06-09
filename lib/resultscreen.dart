import 'package:flutter/material.dart';
import 'package:quiz_app/models/questionsdata.dart';
import 'question_summary.dart';

class ResultsScreen extends StatelessWidget {
   ResultsScreen({super.key, required this.chosenAnswers});

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
    final summaryData= getSummaryData();
    final numtotalques=questions.length;
    final numofcirrectques=summaryData.where((data){
      return data['userans']==data['correctans'];
    }).length;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment:CrossAxisAlignment.center ,
      children: [
          Text('You answer $numofcirrectques correct out $numtotalques!!!')
        ,
       const SizedBox(height: 30,),
        QuestionsSummary(getSummaryData()),
        const SizedBox(height: 25,),
         TextButton(onPressed: (){

         }, child: Text('Restart Quiz')),
      ],
    );
  }
}
