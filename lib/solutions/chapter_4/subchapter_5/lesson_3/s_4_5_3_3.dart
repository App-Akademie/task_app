import 'package:flutter/material.dart';

class S4533 extends StatelessWidget {
  const S4533({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
return const Contain();  
}
}

class Contain extends StatelessWidget{
  const Contain({super.key});
  
  @override
  Widget build(BuildContext context) {
return  Center(
  child: Container(
    color: Colors.blue,
    width: 150,
    height: 150,
child: const Column(
crossAxisAlignment: CrossAxisAlignment.center,
  children: [
Align(
      alignment: Alignment.center,
      child: Text("App\n Akademie", textAlign: TextAlign.center,
      ),
    )
  ],
)
),
  );
  }
  }
  