import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_app/private/features/tasks/application/get_curriculum_titles.dart';
part 'task_model.freezed.dart';

@freezed
abstract class TaskModel with _$TaskModel {
  const factory TaskModel({
    required int chapter,
    required int subChapter,
    required int lesson,
    required int taskNumber,
    required String taskTitel,
    required String taskText,
    String? taskImagePath,
  }) = _TaskModel;

  const TaskModel._();
  String get fullSubChapterNumberString => "$chapter.$subChapter";
  String get fullLectionNumberString => "$chapter.$subChapter.$lesson";
  String get fullTaskNumberString => "$chapter.$subChapter.$lesson.$taskNumber";
  String get chapterTitle => getCurriculumTitle(chapter: chapter);
  String get subChapterTitle =>
      getCurriculumTitle(chapter: chapter, subChapter: subChapter);
  String get lessonTitle => getCurriculumTitle(
      chapter: chapter, subChapter: subChapter, lesson: lesson);

  /// Returns a copy of this [TaskModel] with the fields subChapter, lesson, taskNumber, taskTitel and taskText set to their default values.
  /// this comes in handy when you want to sort a list of [TaskModel]s by chapter,
  /// because then removing "duplicates" is easier.
  TaskModel stripDownToChapter() => copyWith(
      subChapter: 0,
      lesson: 0,
      taskNumber: 0,
      taskTitel: "",
      taskText: "",
      taskImagePath: "");

  /// Returns a copy of this [TaskModel] with the fields lesson, taskNumber, taskTitel and taskText set to their default values.
  /// this comes in handy when you want to sort a list of [TaskModel]s by chapter and subChapter,
  /// because then removing "duplicates" is easier.
  TaskModel stripDownToChapterAndSubChapter() => copyWith(
      lesson: 0, taskNumber: 0, taskTitel: "", taskText: "", taskImagePath: "");

  /// Returns a copy of this [TaskModel] with the fields taskNumber, taskTitel and taskText set to their default values.
  /// this comes in handy when you want to sort a list of [TaskModel]s by chapter, subChapter and lesson,
  /// because then removing "duplicates" is easier.
  TaskModel stripDownToChapterAndSubChapterAndLesson() =>
      copyWith(taskNumber: 0, taskTitel: "", taskText: "", taskImagePath: "");
}
