import 'package:flutter/material.dart';

class S4531 extends StatelessWidget {
  const S4531({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: const BoxDecoration(color: Colors.blueGrey),
        ),
        Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(color: Colors.blue)),
        Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(color: Colors.cyan))
      ],
    );
  }
}
