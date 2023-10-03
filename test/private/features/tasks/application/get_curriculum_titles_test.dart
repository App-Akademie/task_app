import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/private/features/tasks/application/get_curriculum_titles.dart';

void main() {
  group('Test getCurriculumTitle', () {
    test(
        'given invalid chapter, when getCurriculumTitle, then return unknownLesson',
        () {
      expect(getCurriculumTitle(chapter: 0), unknownLesson);
    });
    test(
        'given invalid chapter, valid subChapter when getCurriculumTitle, then return unknownLesson',
        () {
      expect(getCurriculumTitle(chapter: 0, subChapter: 1), unknownLesson);
    });
    test(
        'given invalid chapter, valid subChapter, valid lesson when getCurriculumTitle, then return unknownLesson',
        () {
      expect(getCurriculumTitle(chapter: 0, subChapter: 1, lesson: 1),
          unknownLesson);
      expect(getCurriculumTitle(chapter: -1, subChapter: 1, lesson: 1),
          unknownLesson);
    });
    test('given valid chapter, then return the chapter title', () {
      const chapterTitle = "Flutter I";
      expect(getCurriculumTitle(chapter: 4), chapterTitle);
      expect(getCurriculumTitle(chapter: 4, subChapter: 0), chapterTitle);
      expect(getCurriculumTitle(chapter: 4, subChapter: 0, lesson: 0),
          chapterTitle);
    });
    test(
        'given valid chapter, valid subChapter then return the sub chapter title',
        () {
      const subChapterTitle = "Styling I";

      expect(getCurriculumTitle(chapter: 5, subChapter: 1), subChapterTitle);
      expect(getCurriculumTitle(chapter: 5, subChapter: 1, lesson: 0),
          subChapterTitle);
    });
    test(
        'given valid chapter, valid subChapter, valid lesson then return the lesson title',
        () {
      const lessonTitle = "Allgemein";

      expect(getCurriculumTitle(chapter: 5, subChapter: 1, lesson: 1),
          lessonTitle);
    });
  });
}
