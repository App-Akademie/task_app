import 'package:flutter/material.dart';
import 'package:task_app/private/config/app_theme.dart';
import 'package:task_app/private/features/text_parsing/models/text_pieces/code_text_piece.dart';
import 'package:task_app/private/features/text_parsing/models/text_pieces/note_text_piece.dart';
import 'package:task_app/private/features/text_parsing/models/text_pieces/plain_text_piece.dart';
import 'package:task_app/private/features/text_parsing/models/text_pieces/text_piece.dart';

List<TextPiece> parseTextToPieces(String text) {
  List<TextPiece> pieces = [];
  StringBuffer currentPiece = StringBuffer();
  int index = 0;

  while (index < text.length) {
    if (text.startsWith('`', index)) {
      if (currentPiece.isNotEmpty) {
        pieces.add(PlainTextPiece(currentPiece.toString()));
        currentPiece.clear();
      }
      int endIndex = text.indexOf('`', index + 1);
      if (endIndex == -1) {
        // no closing `
        currentPiece.write(text.substring(index));
        break;
      } else {
        pieces.add(CodeTextPiece(text.substring(index + 1, endIndex)));
        index = endIndex + 1;
      }
    } else if (text.startsWith('**', index)) {
      if (currentPiece.isNotEmpty) {
        pieces.add(PlainTextPiece(currentPiece.toString()));
        currentPiece.clear();
      }
      int endIndex = text.indexOf('**', index + 2);
      if (endIndex == -1) {
        // no closing **
        currentPiece.write(text.substring(index));
        break;
      } else {
        pieces.add(NoteTextPiece(text.substring(index + 2, endIndex)));
        index = endIndex + 2;
      }
    } else {
      currentPiece.write(text[index]);
      index++;
    }
  }

  if (currentPiece.isNotEmpty) {
    pieces.add(PlainTextPiece(currentPiece.toString()));
  }

  return pieces;
}

TextStyle? getStyleFromTextPiece(BuildContext context, TextPiece piece) {
  if (piece is CodeTextPiece) {
    return context.textTheme.titleMedium!.copyWith(
      color: context.colors.primary,
    );
  } else if (piece is NoteTextPiece) {
    return context.textTheme.titleMedium!.copyWith(
      fontStyle: FontStyle.italic,
    );
  } else {
    return null;
  }
}
