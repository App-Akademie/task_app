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
  String name = "";
  String buttonText = "Show Name";
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(name),
      ElevatedButton(onPressed: (){
        if(buttonText == "Show Name"){
        setState(() {
          name = "Psycho";
          buttonText = "Hide Name";

        });
        } else {
          setState(() {
            name = "";
            buttonText = "Show Name";
          });
        }
      }, child: Text(buttonText))
    ],);
   
  }
}
