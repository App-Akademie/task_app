import 'package:flutter/material.dart';

class S4531 extends StatelessWidget {
  const S4531({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const myColumn();
  }
}

class myColumn extends StatelessWidget {
  const myColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.blueGrey,
          child: Center(child: Text('Container 1')),
        ),
        SizedBox(height: 10), // Optional: Adds spacing between containers
        Container(
          width: 100,
          height: 100,
          color: Colors.blue,
          child: Center(child: Text('Container 2')),
        ),
        SizedBox(height: 10), // Optional: Adds spacing between containers
        Container(
          width: 100,
          height: 100,
          color: Colors.cyan,
          child: Center(child: Text('Container 3')),
        ),
      ],
    );
  }
}
