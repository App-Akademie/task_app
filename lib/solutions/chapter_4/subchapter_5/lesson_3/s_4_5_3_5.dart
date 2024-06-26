import 'package:flutter/material.dart';

class S4535 extends StatelessWidget {
  const S4535({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 350,
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          const Spacer(),
          const Text(
            "Lösung:",
            style: TextStyle(color: Color.fromARGB(155, 0, 0, 0), fontSize: 20),
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(color: Colors.red),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(color: Colors.green),
                )
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(color: Colors.blue),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(color: Colors.yellow),
                  )
                ],
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
