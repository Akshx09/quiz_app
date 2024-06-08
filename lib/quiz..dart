import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/models/questionsdata.dart';
import 'package:quiz_app/questionsscreen.dart';
import 'start_screen.dart';
import 'resultscreen.dart';
import 'questionsscreen.dart';
import 'package:quiz_app/models/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
   List<String> selectedAnswers=[];
  Widget ?activescreen ;

  @override
  void initState() {
    activescreen =  HomePage1(switchScreen);
    super.initState();
  }
 void chooseAnswer(String answer){
    selectedAnswers.add(answer);

    if(selectedAnswers.length==questions.length){
      setState(() {
        selectedAnswers=[];
        activescreen=ResultsScreen(chosenAnswers: selectedAnswers);
      });
    }

 }
 void  switchScreen(){
    setState(() {
      activescreen = questionscreen(onSelectAnswer: chooseAnswer);
    });
  }


  @override
  Widget build(BuildContext context) {
 Widget screenWidget=HomePage1(() { });
    if(activescreen=='Resultsscreen'){
      screenWidget=ResultsScreen(chosenAnswers: selectedAnswers);
    }

    return  MaterialApp(
      title: 'Quiz on Flutter',
      showSemanticsDebugger: false,
      home:Scaffold(
          backgroundColor: Colors.purple,
          body:  Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.center,
                colors: [Colors.purple.shade500,Colors.purple.shade800],
              ),
            ),
            child: activescreen,
          )
        //appBar: AppBar(title: Text('Quiz flutter'),),
      ),
    );
  }
}
