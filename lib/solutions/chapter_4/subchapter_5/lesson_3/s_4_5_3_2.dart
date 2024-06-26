import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_app/solutions/chapter_4/subchapter_5/lesson_3/s_4_5_3_1.dart';

class S4532 extends StatelessWidget {
  const S4532({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
return const Writing();
  }
}

class Writing extends StatelessWidget{
  const Writing({super.key});

  @override
  Widget build(BuildContext context) {
return const Column(
  children: [
    Text("App Akademie"),
    Text("App Akademie", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue,)),
    Text("App Akademie", style: TextStyle(fontSize: 10, fontStyle: FontStyle.italic, color: Colors.green),),  
  ],
);
  }
  
}
