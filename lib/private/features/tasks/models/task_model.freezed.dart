// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskModel {
  int get chapter => throw _privateConstructorUsedError;
  int get subChapter => throw _privateConstructorUsedError;
  int get lesson => throw _privateConstructorUsedError;
  int get taskNumber => throw _privateConstructorUsedError;
  String get taskTitel => throw _privateConstructorUsedError;
  String get taskText => throw _privateConstructorUsedError;
  String? get taskImagePath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskModelCopyWith<TaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskModelCopyWith<$Res> {
  factory $TaskModelCopyWith(TaskModel value, $Res Function(TaskModel) then) =
      _$TaskModelCopyWithImpl<$Res, TaskModel>;
  @useResult
  $Res call(
      {int chapter,
      int subChapter,
      int lesson,
      int taskNumber,
      String taskTitel,
      String taskText,
      String? taskImagePath});
}

/// @nodoc
class _$TaskModelCopyWithImpl<$Res, $Val extends TaskModel>
    implements $TaskModelCopyWith<$Res> {
  _$TaskModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapter = null,
    Object? subChapter = null,
    Object? lesson = null,
    Object? taskNumber = null,
    Object? taskTitel = null,
    Object? taskText = null,
    Object? taskImagePath = freezed,
  }) {
    return _then(_value.copyWith(
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as int,
      subChapter: null == subChapter
          ? _value.subChapter
          : subChapter // ignore: cast_nullable_to_non_nullable
              as int,
      lesson: null == lesson
          ? _value.lesson
          : lesson // ignore: cast_nullable_to_non_nullable
              as int,
      taskNumber: null == taskNumber
          ? _value.taskNumber
          : taskNumber // ignore: cast_nullable_to_non_nullable
              as int,
      taskTitel: null == taskTitel
          ? _value.taskTitel
          : taskTitel // ignore: cast_nullable_to_non_nullable
              as String,
      taskText: null == taskText
          ? _value.taskText
          : taskText // ignore: cast_nullable_to_non_nullable
              as String,
      taskImagePath: freezed == taskImagePath
          ? _value.taskImagePath
          : taskImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaskModelCopyWith<$Res> implements $TaskModelCopyWith<$Res> {
  factory _$$_TaskModelCopyWith(
          _$_TaskModel value, $Res Function(_$_TaskModel) then) =
      __$$_TaskModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int chapter,
      int subChapter,
      int lesson,
      int taskNumber,
      String taskTitel,
      String taskText,
      String? taskImagePath});
}

/// @nodoc
class __$$_TaskModelCopyWithImpl<$Res>
    extends _$TaskModelCopyWithImpl<$Res, _$_TaskModel>
    implements _$$_TaskModelCopyWith<$Res> {
  __$$_TaskModelCopyWithImpl(
      _$_TaskModel _value, $Res Function(_$_TaskModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapter = null,
    Object? subChapter = null,
    Object? lesson = null,
    Object? taskNumber = null,
    Object? taskTitel = null,
    Object? taskText = null,
    Object? taskImagePath = freezed,
  }) {
    return _then(_$_TaskModel(
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as int,
      subChapter: null == subChapter
          ? _value.subChapter
          : subChapter // ignore: cast_nullable_to_non_nullable
              as int,
      lesson: null == lesson
          ? _value.lesson
          : lesson // ignore: cast_nullable_to_non_nullable
              as int,
      taskNumber: null == taskNumber
          ? _value.taskNumber
          : taskNumber // ignore: cast_nullable_to_non_nullable
              as int,
      taskTitel: null == taskTitel
          ? _value.taskTitel
          : taskTitel // ignore: cast_nullable_to_non_nullable
              as String,
      taskText: null == taskText
          ? _value.taskText
          : taskText // ignore: cast_nullable_to_non_nullable
              as String,
      taskImagePath: freezed == taskImagePath
          ? _value.taskImagePath
          : taskImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TaskModel extends _TaskModel {
  const _$_TaskModel(
      {required this.chapter,
      required this.subChapter,
      required this.lesson,
      required this.taskNumber,
      required this.taskTitel,
      required this.taskText,
      this.taskImagePath})
      : super._();

  @override
  final int chapter;
  @override
  final int subChapter;
  @override
  final int lesson;
  @override
  final int taskNumber;
  @override
  final String taskTitel;
  @override
  final String taskText;
  @override
  final String? taskImagePath;

  @override
  String toString() {
    return 'TaskModel(chapter: $chapter, subChapter: $subChapter, lesson: $lesson, taskNumber: $taskNumber, taskTitel: $taskTitel, taskText: $taskText, taskImagePath: $taskImagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskModel &&
            (identical(other.chapter, chapter) || other.chapter == chapter) &&
            (identical(other.subChapter, subChapter) ||
                other.subChapter == subChapter) &&
            (identical(other.lesson, lesson) || other.lesson == lesson) &&
            (identical(other.taskNumber, taskNumber) ||
                other.taskNumber == taskNumber) &&
            (identical(other.taskTitel, taskTitel) ||
                other.taskTitel == taskTitel) &&
            (identical(other.taskText, taskText) ||
                other.taskText == taskText) &&
            (identical(other.taskImagePath, taskImagePath) ||
                other.taskImagePath == taskImagePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chapter, subChapter, lesson,
      taskNumber, taskTitel, taskText, taskImagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskModelCopyWith<_$_TaskModel> get copyWith =>
      __$$_TaskModelCopyWithImpl<_$_TaskModel>(this, _$identity);
}

abstract class _TaskModel extends TaskModel {
  const factory _TaskModel(
      {required final int chapter,
      required final int subChapter,
      required final int lesson,
      required final int taskNumber,
      required final String taskTitel,
      required final String taskText,
      final String? taskImagePath}) = _$_TaskModel;
  const _TaskModel._() : super._();

  @override
  int get chapter;
  @override
  int get subChapter;
  @override
  int get lesson;
  @override
  int get taskNumber;
  @override
  String get taskTitel;
  @override
  String get taskText;
  @override
  String? get taskImagePath;
  @override
  @JsonKey(ignore: true)
  _$$_TaskModelCopyWith<_$_TaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}
