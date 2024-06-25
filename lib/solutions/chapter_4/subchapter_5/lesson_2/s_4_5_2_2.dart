import 'package:flutter/material.dart';

class S4522 extends StatelessWidget {
  const S4522({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MyStatelessWidget();
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Hello WOP !!!',
          style: TextStyle(fontSize: 24),
        ),
        SizedBox(
            height: 20), // Adds some spacing between the text and the button
        ElevatedButton(
          onPressed: () {
            // Define the action when the button is pressed
            // print('Habbidscsh gedrückt');
          },
          child: Text('Klick mich'),
        ),
      ],
    );
  }
}
