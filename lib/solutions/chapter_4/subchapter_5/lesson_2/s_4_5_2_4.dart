import 'package:flutter/material.dart';

class S4524 extends StatelessWidget {
  const S4524({super.key});
  @override
  Widget build(BuildContext context) {
    return const ShowHideNameWidget();
  }
}

//class MyApp extends StatelessWidget {
// const MyApp({super.key});

// @override
// Widget build(BuildContext context) {
//   return MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: const Text('Show/Hide Name Widget'),
//       ),
//       body: const Center(
//         child: ShowHideNameWidget(),
//       ),
//     ),
//   );
// }
//}

class ShowHideNameWidget extends StatefulWidget {
  const ShowHideNameWidget({super.key});

  @override
  _ShowHideNameWidgetState createState() => _ShowHideNameWidgetState();
}

class _ShowHideNameWidgetState extends State<ShowHideNameWidget> {
  String _name = '';
  String _buttonText = 'Name anzeigen';

  void _toggleName() {
    setState(() {
      if (_name.isEmpty) {
        _name = 'Ralf';
        _buttonText = 'Name verstecken';
      } else {
        _name = '';
        _buttonText = 'Name anzeigen';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          _name,
          style: const TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: _toggleName,
          child: Text(_buttonText),
        ),
      ],
    );
  }
}
