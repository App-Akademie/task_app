import 'package:flutter/material.dart';
import 'package:task_app/private/features/text_parsing/application/task_text_parser.dart';

class TaskText extends StatefulWidget {
  final String text;
  const TaskText({super.key, required this.text});

  @override
  State<TaskText> createState() => _TaskTextState();
}

class _TaskTextState extends State<TaskText> {
  @override
  Widget build(BuildContext context) {
    final pieces = parseTextToPieces(widget.text);
    return RichText(
      text: TextSpan(
        // Note: Styles for TextSpans must be explicitly defined.
        // Child text spans will inherit styles from parent
        style: Theme.of(context).textTheme.titleMedium,
        children: <TextSpan>[
          for (final piece in pieces)
            TextSpan(
              text: piece.text,
              style: getStyleFromTextPiece(context, piece),
            ),
        ],
      ),
    );
  }
}
