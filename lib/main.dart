import 'package:flutter/material.dart'
    show
        AppBar,
        BuildContext,
        Center,
        Column,
        ElevatedButton,
        MainAxisAlignment,
        MaterialApp,
        Scaffold,
        StatelessWidget,
        Text,
        TextStyle,
        Widget;

runApp(Function() TaskApp) async {}

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TaskHomePage(),
    );
  }
}

class TaskHomePage extends StatelessWidget {
  const TaskHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Willkommen zur SchulungsApp!',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                // Hier sollte die Navigation zur Schulungsseite implementiert werden.
                // Beispiel: Navigator.push(context, MaterialPageRoute(builder: (context) => TrainingPage()));
              },
              child: const Text('Zur Schulungsseite navigieren'),
            ),
          ],
        ),
      ),
    );
  }
}
