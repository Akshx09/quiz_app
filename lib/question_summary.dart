import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData,{super.key});

  final List<Map<String,Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                Text(((data['q1'] as int)+1).toString()),
                Expanded(
                  child: Column(
                    children: [
                      Text(data['question']as String),
                      const SizedBox(height: 5,),
                      Text(data['userans']as String),
                      Text(data['correctans']as String),
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
