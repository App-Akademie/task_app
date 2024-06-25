import 'package:flutter/material.dart';

class S4524 extends StatelessWidget {
  const S4524({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const ShowHideNameWidget();
  }
}

class ShowHideNameWidget extends StatefulWidget {
  const ShowHideNameWidget({super.key});

  @override
  State<ShowHideNameWidget> createState() => _ShowHideNameWidgetState();
}

class _ShowHideNameWidgetState extends State<ShowHideNameWidget> {
  String buttonText = "Name Anzeigen";
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(name),
        ElevatedButton(
          onPressed: () {
            setState(() {
              if (buttonText == "Name Anzeigen") {
                buttonText = "Name Verstecken";
                name = "Arif";
              } else {
                buttonText = "Name Anzeigen";
                name = "";
              }
            });
          },
          child: Text(buttonText),
        )
      ],
    );
  }
}
