import 'package:flutter/material.dart';

class S4533 extends StatelessWidget {
  const S4533({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        width: 150,
        decoration: const BoxDecoration(color: Colors.grey),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("App",
                style: TextStyle(
                  color: Colors.black,
                )),
            Text("Akademie",
                style: TextStyle(
                  color: Colors.black,
                ))
          ],
        ));
  }
}
