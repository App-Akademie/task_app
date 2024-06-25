import 'package:flutter/material.dart';

class S4511 extends StatelessWidget {
  const S4511({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Image.asset("assets/images/icon_dark_bg.jpg"),
          Positioned(
              top: 40,
              left: 30,
              child: Container(
                width: 300,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.white,
                          blurRadius: 10,
                          spreadRadius: 5,
                          offset: Offset(0, 0)),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(60)),
                child: const Text(
                  textDirection: TextDirection.ltr,
                  "Hello World",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                            blurRadius: 15,
                            color: Colors.black,
                            offset: Offset(1, 1))
                      ]),
                ),
              ))
        ],
      ),
    );
  }
}
