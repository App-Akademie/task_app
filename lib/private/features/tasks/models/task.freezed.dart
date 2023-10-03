// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Task {
  TaskModel get taskModel => throw _privateConstructorUsedError;
  Widget? get solution => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call({TaskModel taskModel, Widget? solution});

  $TaskModelCopyWith<$Res> get taskModel;
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskModel = null,
    Object? solution = freezed,
  }) {
    return _then(_value.copyWith(
      taskModel: null == taskModel
          ? _value.taskModel
          : taskModel // ignore: cast_nullable_to_non_nullable
              as TaskModel,
      solution: freezed == solution
          ? _value.solution
          : solution // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskModelCopyWith<$Res> get taskModel {
    return $TaskModelCopyWith<$Res>(_value.taskModel, (value) {
      return _then(_value.copyWith(taskModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$_TaskCopyWith(_$_Task value, $Res Function(_$_Task) then) =
      __$$_TaskCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TaskModel taskModel, Widget? solution});

  @override
  $TaskModelCopyWith<$Res> get taskModel;
}

/// @nodoc
class __$$_TaskCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res, _$_Task>
    implements _$$_TaskCopyWith<$Res> {
  __$$_TaskCopyWithImpl(_$_Task _value, $Res Function(_$_Task) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskModel = null,
    Object? solution = freezed,
  }) {
    return _then(_$_Task(
      taskModel: null == taskModel
          ? _value.taskModel
          : taskModel // ignore: cast_nullable_to_non_nullable
              as TaskModel,
      solution: freezed == solution
          ? _value.solution
          : solution // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ));
  }
}

/// @nodoc

class _$_Task extends _Task {
  const _$_Task({required this.taskModel, this.solution}) : super._();

  @override
  final TaskModel taskModel;
  @override
  final Widget? solution;

  @override
  String toString() {
    return 'Task(taskModel: $taskModel, solution: $solution)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Task &&
            (identical(other.taskModel, taskModel) ||
                other.taskModel == taskModel) &&
            (identical(other.solution, solution) ||
                other.solution == solution));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskModel, solution);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskCopyWith<_$_Task> get copyWith =>
      __$$_TaskCopyWithImpl<_$_Task>(this, _$identity);
}

abstract class _Task extends Task {
  const factory _Task(
      {required final TaskModel taskModel, final Widget? solution}) = _$_Task;
  const _Task._() : super._();

  @override
  TaskModel get taskModel;
  @override
  Widget? get solution;
  @override
  @JsonKey(ignore: true)
  _$$_TaskCopyWith<_$_Task> get copyWith => throw _privateConstructorUsedError;
}
