import 'package:flutter/material.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1(void Function () this.startQuiz,{super.key});
   final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //SizedBox(height: 250,),
          Icon(Icons.flutter_dash,size: 500,color: Color.fromARGB(150, 225, 225, 225),),
          //Image.asset('assets/images/quiz-logox.png'),
          Text('welcome test your flutter knowledge',style: TextStyle(fontSize: 29,color: Colors.white),),
          OutlinedButton.icon(onPressed: (){
                   startQuiz();
          },style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
              icon:const Icon( Icons.start),
              label: Text('start')),
        ],
      ),
    );
  }
}
