import 'package:collection/collection.dart';
import 'package:task_app/private/features/tasks/data/curriculum_titles.dart';

/// Returns the title of the curriculum for the given chapter, subchapter or lesson.
///
/// e.g. `getCurriculumTitle(chapter: 3)` returns `Grundlagen Programmierung`
/// e.g. `getCurriculumTitle(chapter: 3, subChapter: 1, lesson: 1)` returns `Algorithmen`
String getCurriculumTitle(
    {required int chapter, int subChapter = 0, int lesson = 0}) {
  return curriculumTitles
          .firstWhereOrNull((record) =>
              record.chapter == chapter &&
              record.subChapter == subChapter &&
              record.lesson == lesson)
          ?.title ??
      unknownLesson;
}

const String unknownLesson = "Unbekannte Lektion";
