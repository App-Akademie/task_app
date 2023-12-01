import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/private/features/text_parsing/application/task_text_parser.dart';
import 'package:task_app/private/features/text_parsing/models/text_pieces/code_text_piece.dart';
import 'package:task_app/private/features/text_parsing/models/text_pieces/note_text_piece.dart';
import 'package:task_app/private/features/text_parsing/models/text_pieces/plain_text_piece.dart';

void main() {
  group("task text parser tests", () {
    test("an empty string is parsed to an empty list", () {
      expect(parseTextToPieces(""), []);
    });
    test(
        "a string with no special characters is parsed to a list with one plain text piece",
        () {
      var result = parseTextToPieces("abc");
      expect(result.length, 1);
      expect(result[0] is PlainTextPiece, true);
      expect(result[0].text, "abc");
    });
    test("a string with one code block is parsed to a list with one code piece",
        () {
      var result = parseTextToPieces("`abc`");
      expect(result.length, 1);
      expect(result[0] is CodeTextPiece, true);
      expect(result[0].text, "abc");
    });
    test("a string with one note block is parsed to a list with one note piece",
        () {
      var result = parseTextToPieces("**abc**");
      expect(result.length, 1);
      expect(result[0] is NoteTextPiece, true);
      expect(result[0].text, "abc");
    });
    test(
        "a string with one code block and one note block is parsed to a list with two pieces",
        () {
      var result = parseTextToPieces("`abc`**def**");
      expect(result.length, 2);
      expect(result[0] is CodeTextPiece, true);
      expect(result[0].text, "abc");
      expect(result[1] is NoteTextPiece, true);
      expect(result[1].text, "def");
    });
    test(
        "a string with one note block and one code block is parsed to a list with two pieces",
        () {
      var result = parseTextToPieces("**abc**`def`");
      expect(result.length, 2);
      expect(result[0] is NoteTextPiece, true);
      expect(result[0].text, "abc");
      expect(result[1] is CodeTextPiece, true);
      expect(result[1].text, "def");
    });
    test(
        "a string with one note block, one code block and one plain text block is parsed to a list with three pieces",
        () {
      var result = parseTextToPieces("**abc**`def`ghi");
      expect(result.length, 3);
      expect(result[0] is NoteTextPiece, true);
      expect(result[0].text, "abc");
      expect(result[1] is CodeTextPiece, true);
      expect(result[1].text, "def");
      expect(result[2] is PlainTextPiece, true);
      expect(result[2].text, "ghi");
    });
    test(
        "a string with one note block, one plain text block and one code block is parsed to a list with three pieces",
        () {
      var result = parseTextToPieces("**abc**ghi`def`");
      expect(result.length, 3);
      expect(result[0] is NoteTextPiece, true);
      expect(result[0].text, "abc");
      expect(result[1] is PlainTextPiece, true);
      expect(result[1].text, "ghi");
      expect(result[2] is CodeTextPiece, true);
      expect(result[2].text, "def");
    });
    test(
        "a string with one plain text block, one note block and one code block is parsed to a list with three pieces",
        () {
      var result = parseTextToPieces("abc**def**`ghi`");
      expect(result.length, 3);
      expect(result[0] is PlainTextPiece, true);
      expect(result[0].text, "abc");
      expect(result[1] is NoteTextPiece, true);
      expect(result[1].text, "def");
      expect(result[2] is CodeTextPiece, true);
      expect(result[2].text, "ghi");
    });
    test(
        "a string with one plain text block, one code block and one note block is parsed to a list with three pieces",
        () {
      var result = parseTextToPieces("abc`def`**ghi**");
      expect(result.length, 3);
      expect(result[0] is PlainTextPiece, true);
      expect(result[0].text, "abc");
      expect(result[1] is CodeTextPiece, true);
      expect(result[1].text, "def");
      expect(result[2] is NoteTextPiece, true);
      expect(result[2].text, "ghi");
    });
    test(
        "a string with multiple plain text blocks, code blocks and note blocks is parsed to a list with the correct number of pieces",
        () {
      var result =
          parseTextToPieces("abc`def`**ghi**jkl`mno`**pqr**stu`vwx`**yz**");
      expect(result.length, 9);
      expect(result[0] is PlainTextPiece, true);
      expect(result[0].text, "abc");
      expect(result[1] is CodeTextPiece, true);
      expect(result[1].text, "def");
      expect(result[2] is NoteTextPiece, true);
      expect(result[2].text, "ghi");
      expect(result[3] is PlainTextPiece, true);
      expect(result[3].text, "jkl");
      expect(result[4] is CodeTextPiece, true);
      expect(result[4].text, "mno");
      expect(result[5] is NoteTextPiece, true);
      expect(result[5].text, "pqr");
      expect(result[6] is PlainTextPiece, true);
      expect(result[6].text, "stu");
      expect(result[7] is CodeTextPiece, true);
      expect(result[7].text, "vwx");
      expect(result[8] is NoteTextPiece, true);
      expect(result[8].text, "yz");
    });
  });
}
