// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'course_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods',);

/// @nodoc
class _$CourseEventTearOff {
  const _$CourseEventTearOff();

  _GetCourses getCourses() {
    return const _GetCourses();
  }

  _CreateCourse createCourse(String name) {
    return _CreateCourse(
      name,
    );
  }

  _DeleteCourse deleteCourse(String courseId) {
    return _DeleteCourse(
      courseId,
    );
  }

  _UpdateCourse updateCourse({required String courseId, required String name}) {
    return _UpdateCourse(
      courseId: courseId,
      name: name,
    );
  }

  _AddStudentToCourse addStudentToCourse(
      {required String courseId, required String studentEmail,}) {
    return _AddStudentToCourse(
      courseId: courseId,
      studentEmail: studentEmail,
    );
  }

  _RemoveStudentFromCourse removeStudentFromCourse(
      {required String courseId, required String studentEmail,}) {
    return _RemoveStudentFromCourse(
      courseId: courseId,
      studentEmail: studentEmail,
    );
  }

  _RemoveUpdatedCourseName removedUpdatedCourseName() {
    return const _RemoveUpdatedCourseName();
  }

  _Reset reset() {
    return const _Reset();
  }
}

/// @nodoc
const $CourseEvent = _$CourseEventTearOff();

/// @nodoc
mixin _$CourseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCourses,
    required TResult Function(String name) createCourse,
    required TResult Function(String courseId) deleteCourse,
    required TResult Function(String courseId, String name) updateCourse,
    required TResult Function(String courseId, String studentEmail)
        addStudentToCourse,
    required TResult Function(String courseId, String studentEmail)
        removeStudentFromCourse,
    required TResult Function() removedUpdatedCourseName,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCourses,
    TResult Function(String name)? createCourse,
    TResult Function(String courseId)? deleteCourse,
    TResult Function(String courseId, String name)? updateCourse,
    TResult Function(String courseId, String studentEmail)? addStudentToCourse,
    TResult Function(String courseId, String studentEmail)?
        removeStudentFromCourse,
    TResult Function()? removedUpdatedCourseName,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCourses value) getCourses,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_DeleteCourse value) deleteCourse,
    required TResult Function(_UpdateCourse value) updateCourse,
    required TResult Function(_AddStudentToCourse value) addStudentToCourse,
    required TResult Function(_RemoveStudentFromCourse value)
        removeStudentFromCourse,
    required TResult Function(_RemoveUpdatedCourseName value)
        removedUpdatedCourseName,
    required TResult Function(_Reset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCourses value)? getCourses,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_DeleteCourse value)? deleteCourse,
    TResult Function(_UpdateCourse value)? updateCourse,
    TResult Function(_AddStudentToCourse value)? addStudentToCourse,
    TResult Function(_RemoveStudentFromCourse value)? removeStudentFromCourse,
    TResult Function(_RemoveUpdatedCourseName value)? removedUpdatedCourseName,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseEventCopyWith<$Res> {
  factory $CourseEventCopyWith(
          CourseEvent value, $Res Function(CourseEvent) then,) =
      _$CourseEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CourseEventCopyWithImpl<$Res> implements $CourseEventCopyWith<$Res> {
  _$CourseEventCopyWithImpl(this._value, this._then);

  final CourseEvent _value;
  // ignore: unused_field
  final $Res Function(CourseEvent) _then;
}

/// @nodoc
abstract class _$GetCoursesCopyWith<$Res> {
  factory _$GetCoursesCopyWith(
          _GetCourses value, $Res Function(_GetCourses) then,) =
      __$GetCoursesCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetCoursesCopyWithImpl<$Res> extends _$CourseEventCopyWithImpl<$Res>
    implements _$GetCoursesCopyWith<$Res> {
  __$GetCoursesCopyWithImpl(
      _GetCourses value, $Res Function(_GetCourses) then,)
      : super(value, (v) => then(v as _GetCourses));

  @override
  _GetCourses get _value => super._value as _GetCourses;
}

/// @nodoc

class _$_GetCourses implements _GetCourses {
  const _$_GetCourses();

  @override
  String toString() {
    return 'CourseEvent.getCourses()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetCourses);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCourses,
    required TResult Function(String name) createCourse,
    required TResult Function(String courseId) deleteCourse,
    required TResult Function(String courseId, String name) updateCourse,
    required TResult Function(String courseId, String studentEmail)
        addStudentToCourse,
    required TResult Function(String courseId, String studentEmail)
        removeStudentFromCourse,
    required TResult Function() removedUpdatedCourseName,
    required TResult Function() reset,
  }) {
    return getCourses();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCourses,
    TResult Function(String name)? createCourse,
    TResult Function(String courseId)? deleteCourse,
    TResult Function(String courseId, String name)? updateCourse,
    TResult Function(String courseId, String studentEmail)? addStudentToCourse,
    TResult Function(String courseId, String studentEmail)?
        removeStudentFromCourse,
    TResult Function()? removedUpdatedCourseName,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (getCourses != null) {
      return getCourses();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCourses value) getCourses,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_DeleteCourse value) deleteCourse,
    required TResult Function(_UpdateCourse value) updateCourse,
    required TResult Function(_AddStudentToCourse value) addStudentToCourse,
    required TResult Function(_RemoveStudentFromCourse value)
        removeStudentFromCourse,
    required TResult Function(_RemoveUpdatedCourseName value)
        removedUpdatedCourseName,
    required TResult Function(_Reset value) reset,
  }) {
    return getCourses(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCourses value)? getCourses,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_DeleteCourse value)? deleteCourse,
    TResult Function(_UpdateCourse value)? updateCourse,
    TResult Function(_AddStudentToCourse value)? addStudentToCourse,
    TResult Function(_RemoveStudentFromCourse value)? removeStudentFromCourse,
    TResult Function(_RemoveUpdatedCourseName value)? removedUpdatedCourseName,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (getCourses != null) {
      return getCourses(this);
    }
    return orElse();
  }
}

abstract class _GetCourses implements CourseEvent {
  const factory _GetCourses() = _$_GetCourses;
}

/// @nodoc
abstract class _$CreateCourseCopyWith<$Res> {
  factory _$CreateCourseCopyWith(
          _CreateCourse value, $Res Function(_CreateCourse) then,) =
      __$CreateCourseCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$CreateCourseCopyWithImpl<$Res> extends _$CourseEventCopyWithImpl<$Res>
    implements _$CreateCourseCopyWith<$Res> {
  __$CreateCourseCopyWithImpl(
      _CreateCourse value, $Res Function(_CreateCourse) then,)
      : super(value, (v) => then(v as _CreateCourse));

  @override
  _CreateCourse get _value => super._value as _CreateCourse;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_CreateCourse(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ),);
  }
}

/// @nodoc

class _$_CreateCourse implements _CreateCourse {
  const _$_CreateCourse(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'CourseEvent.createCourse(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateCourse &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$CreateCourseCopyWith<_CreateCourse> get copyWith =>
      __$CreateCourseCopyWithImpl<_CreateCourse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCourses,
    required TResult Function(String name) createCourse,
    required TResult Function(String courseId) deleteCourse,
    required TResult Function(String courseId, String name) updateCourse,
    required TResult Function(String courseId, String studentEmail)
        addStudentToCourse,
    required TResult Function(String courseId, String studentEmail)
        removeStudentFromCourse,
    required TResult Function() removedUpdatedCourseName,
    required TResult Function() reset,
  }) {
    return createCourse(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCourses,
    TResult Function(String name)? createCourse,
    TResult Function(String courseId)? deleteCourse,
    TResult Function(String courseId, String name)? updateCourse,
    TResult Function(String courseId, String studentEmail)? addStudentToCourse,
    TResult Function(String courseId, String studentEmail)?
        removeStudentFromCourse,
    TResult Function()? removedUpdatedCourseName,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (createCourse != null) {
      return createCourse(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCourses value) getCourses,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_DeleteCourse value) deleteCourse,
    required TResult Function(_UpdateCourse value) updateCourse,
    required TResult Function(_AddStudentToCourse value) addStudentToCourse,
    required TResult Function(_RemoveStudentFromCourse value)
        removeStudentFromCourse,
    required TResult Function(_RemoveUpdatedCourseName value)
        removedUpdatedCourseName,
    required TResult Function(_Reset value) reset,
  }) {
    return createCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCourses value)? getCourses,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_DeleteCourse value)? deleteCourse,
    TResult Function(_UpdateCourse value)? updateCourse,
    TResult Function(_AddStudentToCourse value)? addStudentToCourse,
    TResult Function(_RemoveStudentFromCourse value)? removeStudentFromCourse,
    TResult Function(_RemoveUpdatedCourseName value)? removedUpdatedCourseName,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (createCourse != null) {
      return createCourse(this);
    }
    return orElse();
  }
}

abstract class _CreateCourse implements CourseEvent {
  const factory _CreateCourse(String name) = _$_CreateCourse;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CreateCourseCopyWith<_CreateCourse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteCourseCopyWith<$Res> {
  factory _$DeleteCourseCopyWith(
          _DeleteCourse value, $Res Function(_DeleteCourse) then,) =
      __$DeleteCourseCopyWithImpl<$Res>;
  $Res call({String courseId});
}

/// @nodoc
class __$DeleteCourseCopyWithImpl<$Res> extends _$CourseEventCopyWithImpl<$Res>
    implements _$DeleteCourseCopyWith<$Res> {
  __$DeleteCourseCopyWithImpl(
      _DeleteCourse value, $Res Function(_DeleteCourse) then,)
      : super(value, (v) => then(v as _DeleteCourse));

  @override
  _DeleteCourse get _value => super._value as _DeleteCourse;

  @override
  $Res call({
    Object? courseId = freezed,
  }) {
    return _then(_DeleteCourse(
      courseId == freezed
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
    ),);
  }
}

/// @nodoc

class _$_DeleteCourse implements _DeleteCourse {
  const _$_DeleteCourse(this.courseId);

  @override
  final String courseId;

  @override
  String toString() {
    return 'CourseEvent.deleteCourse(courseId: $courseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteCourse &&
            (identical(other.courseId, courseId) ||
                const DeepCollectionEquality()
                    .equals(other.courseId, courseId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(courseId);

  @JsonKey(ignore: true)
  @override
  _$DeleteCourseCopyWith<_DeleteCourse> get copyWith =>
      __$DeleteCourseCopyWithImpl<_DeleteCourse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCourses,
    required TResult Function(String name) createCourse,
    required TResult Function(String courseId) deleteCourse,
    required TResult Function(String courseId, String name) updateCourse,
    required TResult Function(String courseId, String studentEmail)
        addStudentToCourse,
    required TResult Function(String courseId, String studentEmail)
        removeStudentFromCourse,
    required TResult Function() removedUpdatedCourseName,
    required TResult Function() reset,
  }) {
    return deleteCourse(courseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCourses,
    TResult Function(String name)? createCourse,
    TResult Function(String courseId)? deleteCourse,
    TResult Function(String courseId, String name)? updateCourse,
    TResult Function(String courseId, String studentEmail)? addStudentToCourse,
    TResult Function(String courseId, String studentEmail)?
        removeStudentFromCourse,
    TResult Function()? removedUpdatedCourseName,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (deleteCourse != null) {
      return deleteCourse(courseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCourses value) getCourses,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_DeleteCourse value) deleteCourse,
    required TResult Function(_UpdateCourse value) updateCourse,
    required TResult Function(_AddStudentToCourse value) addStudentToCourse,
    required TResult Function(_RemoveStudentFromCourse value)
        removeStudentFromCourse,
    required TResult Function(_RemoveUpdatedCourseName value)
        removedUpdatedCourseName,
    required TResult Function(_Reset value) reset,
  }) {
    return deleteCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCourses value)? getCourses,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_DeleteCourse value)? deleteCourse,
    TResult Function(_UpdateCourse value)? updateCourse,
    TResult Function(_AddStudentToCourse value)? addStudentToCourse,
    TResult Function(_RemoveStudentFromCourse value)? removeStudentFromCourse,
    TResult Function(_RemoveUpdatedCourseName value)? removedUpdatedCourseName,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (deleteCourse != null) {
      return deleteCourse(this);
    }
    return orElse();
  }
}

abstract class _DeleteCourse implements CourseEvent {
  const factory _DeleteCourse(String courseId) = _$_DeleteCourse;

  String get courseId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteCourseCopyWith<_DeleteCourse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateCourseCopyWith<$Res> {
  factory _$UpdateCourseCopyWith(
          _UpdateCourse value, $Res Function(_UpdateCourse) then,) =
      __$UpdateCourseCopyWithImpl<$Res>;
  $Res call({String courseId, String name});
}

/// @nodoc
class __$UpdateCourseCopyWithImpl<$Res> extends _$CourseEventCopyWithImpl<$Res>
    implements _$UpdateCourseCopyWith<$Res> {
  __$UpdateCourseCopyWithImpl(
      _UpdateCourse value, $Res Function(_UpdateCourse) then,)
      : super(value, (v) => then(v as _UpdateCourse));

  @override
  _UpdateCourse get _value => super._value as _UpdateCourse;

  @override
  $Res call({
    Object? courseId = freezed,
    Object? name = freezed,
  }) {
    return _then(_UpdateCourse(
      courseId: courseId == freezed
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ),);
  }
}

/// @nodoc

class _$_UpdateCourse implements _UpdateCourse {
  const _$_UpdateCourse({required this.courseId, required this.name});

  @override
  final String courseId;
  @override
  final String name;

  @override
  String toString() {
    return 'CourseEvent.updateCourse(courseId: $courseId, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateCourse &&
            (identical(other.courseId, courseId) ||
                const DeepCollectionEquality()
                    .equals(other.courseId, courseId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(courseId) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$UpdateCourseCopyWith<_UpdateCourse> get copyWith =>
      __$UpdateCourseCopyWithImpl<_UpdateCourse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCourses,
    required TResult Function(String name) createCourse,
    required TResult Function(String courseId) deleteCourse,
    required TResult Function(String courseId, String name) updateCourse,
    required TResult Function(String courseId, String studentEmail)
        addStudentToCourse,
    required TResult Function(String courseId, String studentEmail)
        removeStudentFromCourse,
    required TResult Function() removedUpdatedCourseName,
    required TResult Function() reset,
  }) {
    return updateCourse(courseId, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCourses,
    TResult Function(String name)? createCourse,
    TResult Function(String courseId)? deleteCourse,
    TResult Function(String courseId, String name)? updateCourse,
    TResult Function(String courseId, String studentEmail)? addStudentToCourse,
    TResult Function(String courseId, String studentEmail)?
        removeStudentFromCourse,
    TResult Function()? removedUpdatedCourseName,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (updateCourse != null) {
      return updateCourse(courseId, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCourses value) getCourses,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_DeleteCourse value) deleteCourse,
    required TResult Function(_UpdateCourse value) updateCourse,
    required TResult Function(_AddStudentToCourse value) addStudentToCourse,
    required TResult Function(_RemoveStudentFromCourse value)
        removeStudentFromCourse,
    required TResult Function(_RemoveUpdatedCourseName value)
        removedUpdatedCourseName,
    required TResult Function(_Reset value) reset,
  }) {
    return updateCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCourses value)? getCourses,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_DeleteCourse value)? deleteCourse,
    TResult Function(_UpdateCourse value)? updateCourse,
    TResult Function(_AddStudentToCourse value)? addStudentToCourse,
    TResult Function(_RemoveStudentFromCourse value)? removeStudentFromCourse,
    TResult Function(_RemoveUpdatedCourseName value)? removedUpdatedCourseName,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (updateCourse != null) {
      return updateCourse(this);
    }
    return orElse();
  }
}

abstract class _UpdateCourse implements CourseEvent {
  const factory _UpdateCourse(
      {required String courseId, required String name,}) = _$_UpdateCourse;

  String get courseId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateCourseCopyWith<_UpdateCourse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddStudentToCourseCopyWith<$Res> {
  factory _$AddStudentToCourseCopyWith(
          _AddStudentToCourse value, $Res Function(_AddStudentToCourse) then,) =
      __$AddStudentToCourseCopyWithImpl<$Res>;
  $Res call({String courseId, String studentEmail});
}

/// @nodoc
class __$AddStudentToCourseCopyWithImpl<$Res>
    extends _$CourseEventCopyWithImpl<$Res>
    implements _$AddStudentToCourseCopyWith<$Res> {
  __$AddStudentToCourseCopyWithImpl(
      _AddStudentToCourse value, $Res Function(_AddStudentToCourse) then,)
      : super(value, (v) => then(v as _AddStudentToCourse));

  @override
  _AddStudentToCourse get _value => super._value as _AddStudentToCourse;

  @override
  $Res call({
    Object? courseId = freezed,
    Object? studentEmail = freezed,
  }) {
    return _then(_AddStudentToCourse(
      courseId: courseId == freezed
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      studentEmail: studentEmail == freezed
          ? _value.studentEmail
          : studentEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ),);
  }
}

/// @nodoc

class _$_AddStudentToCourse implements _AddStudentToCourse {
  const _$_AddStudentToCourse(
      {required this.courseId, required this.studentEmail,});

  @override
  final String courseId;
  @override
  final String studentEmail;

  @override
  String toString() {
    return 'CourseEvent.addStudentToCourse(courseId: $courseId, studentEmail: $studentEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddStudentToCourse &&
            (identical(other.courseId, courseId) ||
                const DeepCollectionEquality()
                    .equals(other.courseId, courseId)) &&
            (identical(other.studentEmail, studentEmail) ||
                const DeepCollectionEquality()
                    .equals(other.studentEmail, studentEmail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(courseId) ^
      const DeepCollectionEquality().hash(studentEmail);

  @JsonKey(ignore: true)
  @override
  _$AddStudentToCourseCopyWith<_AddStudentToCourse> get copyWith =>
      __$AddStudentToCourseCopyWithImpl<_AddStudentToCourse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCourses,
    required TResult Function(String name) createCourse,
    required TResult Function(String courseId) deleteCourse,
    required TResult Function(String courseId, String name) updateCourse,
    required TResult Function(String courseId, String studentEmail)
        addStudentToCourse,
    required TResult Function(String courseId, String studentEmail)
        removeStudentFromCourse,
    required TResult Function() removedUpdatedCourseName,
    required TResult Function() reset,
  }) {
    return addStudentToCourse(courseId, studentEmail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCourses,
    TResult Function(String name)? createCourse,
    TResult Function(String courseId)? deleteCourse,
    TResult Function(String courseId, String name)? updateCourse,
    TResult Function(String courseId, String studentEmail)? addStudentToCourse,
    TResult Function(String courseId, String studentEmail)?
        removeStudentFromCourse,
    TResult Function()? removedUpdatedCourseName,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (addStudentToCourse != null) {
      return addStudentToCourse(courseId, studentEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCourses value) getCourses,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_DeleteCourse value) deleteCourse,
    required TResult Function(_UpdateCourse value) updateCourse,
    required TResult Function(_AddStudentToCourse value) addStudentToCourse,
    required TResult Function(_RemoveStudentFromCourse value)
        removeStudentFromCourse,
    required TResult Function(_RemoveUpdatedCourseName value)
        removedUpdatedCourseName,
    required TResult Function(_Reset value) reset,
  }) {
    return addStudentToCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCourses value)? getCourses,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_DeleteCourse value)? deleteCourse,
    TResult Function(_UpdateCourse value)? updateCourse,
    TResult Function(_AddStudentToCourse value)? addStudentToCourse,
    TResult Function(_RemoveStudentFromCourse value)? removeStudentFromCourse,
    TResult Function(_RemoveUpdatedCourseName value)? removedUpdatedCourseName,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (addStudentToCourse != null) {
      return addStudentToCourse(this);
    }
    return orElse();
  }
}

abstract class _AddStudentToCourse implements CourseEvent {
  const factory _AddStudentToCourse(
      {required String courseId,
      required String studentEmail,}) = _$_AddStudentToCourse;

  String get courseId => throw _privateConstructorUsedError;
  String get studentEmail => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddStudentToCourseCopyWith<_AddStudentToCourse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoveStudentFromCourseCopyWith<$Res> {
  factory _$RemoveStudentFromCourseCopyWith(_RemoveStudentFromCourse value,
          $Res Function(_RemoveStudentFromCourse) then,) =
      __$RemoveStudentFromCourseCopyWithImpl<$Res>;
  $Res call({String courseId, String studentEmail});
}

/// @nodoc
class __$RemoveStudentFromCourseCopyWithImpl<$Res>
    extends _$CourseEventCopyWithImpl<$Res>
    implements _$RemoveStudentFromCourseCopyWith<$Res> {
  __$RemoveStudentFromCourseCopyWithImpl(_RemoveStudentFromCourse value,
      $Res Function(_RemoveStudentFromCourse) then,)
      : super(value, (v) => then(v as _RemoveStudentFromCourse));

  @override
  _RemoveStudentFromCourse get _value =>
      super._value as _RemoveStudentFromCourse;

  @override
  $Res call({
    Object? courseId = freezed,
    Object? studentEmail = freezed,
  }) {
    return _then(_RemoveStudentFromCourse(
      courseId: courseId == freezed
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      studentEmail: studentEmail == freezed
          ? _value.studentEmail
          : studentEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ),);
  }
}

/// @nodoc

class _$_RemoveStudentFromCourse implements _RemoveStudentFromCourse {
  const _$_RemoveStudentFromCourse(
      {required this.courseId, required this.studentEmail,});

  @override
  final String courseId;
  @override
  final String studentEmail;

  @override
  String toString() {
    return 'CourseEvent.removeStudentFromCourse(courseId: $courseId, studentEmail: $studentEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoveStudentFromCourse &&
            (identical(other.courseId, courseId) ||
                const DeepCollectionEquality()
                    .equals(other.courseId, courseId)) &&
            (identical(other.studentEmail, studentEmail) ||
                const DeepCollectionEquality()
                    .equals(other.studentEmail, studentEmail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(courseId) ^
      const DeepCollectionEquality().hash(studentEmail);

  @JsonKey(ignore: true)
  @override
  _$RemoveStudentFromCourseCopyWith<_RemoveStudentFromCourse> get copyWith =>
      __$RemoveStudentFromCourseCopyWithImpl<_RemoveStudentFromCourse>(
          this, _$identity,);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCourses,
    required TResult Function(String name) createCourse,
    required TResult Function(String courseId) deleteCourse,
    required TResult Function(String courseId, String name) updateCourse,
    required TResult Function(String courseId, String studentEmail)
        addStudentToCourse,
    required TResult Function(String courseId, String studentEmail)
        removeStudentFromCourse,
    required TResult Function() removedUpdatedCourseName,
    required TResult Function() reset,
  }) {
    return removeStudentFromCourse(courseId, studentEmail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCourses,
    TResult Function(String name)? createCourse,
    TResult Function(String courseId)? deleteCourse,
    TResult Function(String courseId, String name)? updateCourse,
    TResult Function(String courseId, String studentEmail)? addStudentToCourse,
    TResult Function(String courseId, String studentEmail)?
        removeStudentFromCourse,
    TResult Function()? removedUpdatedCourseName,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (removeStudentFromCourse != null) {
      return removeStudentFromCourse(courseId, studentEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCourses value) getCourses,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_DeleteCourse value) deleteCourse,
    required TResult Function(_UpdateCourse value) updateCourse,
    required TResult Function(_AddStudentToCourse value) addStudentToCourse,
    required TResult Function(_RemoveStudentFromCourse value)
        removeStudentFromCourse,
    required TResult Function(_RemoveUpdatedCourseName value)
        removedUpdatedCourseName,
    required TResult Function(_Reset value) reset,
  }) {
    return removeStudentFromCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCourses value)? getCourses,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_DeleteCourse value)? deleteCourse,
    TResult Function(_UpdateCourse value)? updateCourse,
    TResult Function(_AddStudentToCourse value)? addStudentToCourse,
    TResult Function(_RemoveStudentFromCourse value)? removeStudentFromCourse,
    TResult Function(_RemoveUpdatedCourseName value)? removedUpdatedCourseName,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (removeStudentFromCourse != null) {
      return removeStudentFromCourse(this);
    }
    return orElse();
  }
}

abstract class _RemoveStudentFromCourse implements CourseEvent {
  const factory _RemoveStudentFromCourse(
      {required String courseId,
      required String studentEmail,}) = _$_RemoveStudentFromCourse;

  String get courseId => throw _privateConstructorUsedError;
  String get studentEmail => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RemoveStudentFromCourseCopyWith<_RemoveStudentFromCourse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoveUpdatedCourseNameCopyWith<$Res> {
  factory _$RemoveUpdatedCourseNameCopyWith(_RemoveUpdatedCourseName value,
          $Res Function(_RemoveUpdatedCourseName) then,) =
      __$RemoveUpdatedCourseNameCopyWithImpl<$Res>;
}

/// @nodoc
class __$RemoveUpdatedCourseNameCopyWithImpl<$Res>
    extends _$CourseEventCopyWithImpl<$Res>
    implements _$RemoveUpdatedCourseNameCopyWith<$Res> {
  __$RemoveUpdatedCourseNameCopyWithImpl(_RemoveUpdatedCourseName value,
      $Res Function(_RemoveUpdatedCourseName) then,)
      : super(value, (v) => then(v as _RemoveUpdatedCourseName));

  @override
  _RemoveUpdatedCourseName get _value =>
      super._value as _RemoveUpdatedCourseName;
}

/// @nodoc

class _$_RemoveUpdatedCourseName implements _RemoveUpdatedCourseName {
  const _$_RemoveUpdatedCourseName();

  @override
  String toString() {
    return 'CourseEvent.removedUpdatedCourseName()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RemoveUpdatedCourseName);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCourses,
    required TResult Function(String name) createCourse,
    required TResult Function(String courseId) deleteCourse,
    required TResult Function(String courseId, String name) updateCourse,
    required TResult Function(String courseId, String studentEmail)
        addStudentToCourse,
    required TResult Function(String courseId, String studentEmail)
        removeStudentFromCourse,
    required TResult Function() removedUpdatedCourseName,
    required TResult Function() reset,
  }) {
    return removedUpdatedCourseName();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCourses,
    TResult Function(String name)? createCourse,
    TResult Function(String courseId)? deleteCourse,
    TResult Function(String courseId, String name)? updateCourse,
    TResult Function(String courseId, String studentEmail)? addStudentToCourse,
    TResult Function(String courseId, String studentEmail)?
        removeStudentFromCourse,
    TResult Function()? removedUpdatedCourseName,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (removedUpdatedCourseName != null) {
      return removedUpdatedCourseName();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCourses value) getCourses,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_DeleteCourse value) deleteCourse,
    required TResult Function(_UpdateCourse value) updateCourse,
    required TResult Function(_AddStudentToCourse value) addStudentToCourse,
    required TResult Function(_RemoveStudentFromCourse value)
        removeStudentFromCourse,
    required TResult Function(_RemoveUpdatedCourseName value)
        removedUpdatedCourseName,
    required TResult Function(_Reset value) reset,
  }) {
    return removedUpdatedCourseName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCourses value)? getCourses,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_DeleteCourse value)? deleteCourse,
    TResult Function(_UpdateCourse value)? updateCourse,
    TResult Function(_AddStudentToCourse value)? addStudentToCourse,
    TResult Function(_RemoveStudentFromCourse value)? removeStudentFromCourse,
    TResult Function(_RemoveUpdatedCourseName value)? removedUpdatedCourseName,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (removedUpdatedCourseName != null) {
      return removedUpdatedCourseName(this);
    }
    return orElse();
  }
}

abstract class _RemoveUpdatedCourseName implements CourseEvent {
  const factory _RemoveUpdatedCourseName() = _$_RemoveUpdatedCourseName;
}

/// @nodoc
abstract class _$ResetCopyWith<$Res> {
  factory _$ResetCopyWith(_Reset value, $Res Function(_Reset) then) =
      __$ResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResetCopyWithImpl<$Res> extends _$CourseEventCopyWithImpl<$Res>
    implements _$ResetCopyWith<$Res> {
  __$ResetCopyWithImpl(_Reset value, $Res Function(_Reset) then)
      : super(value, (v) => then(v as _Reset));

  @override
  _Reset get _value => super._value as _Reset;
}

/// @nodoc

class _$_Reset implements _Reset {
  const _$_Reset();

  @override
  String toString() {
    return 'CourseEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Reset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCourses,
    required TResult Function(String name) createCourse,
    required TResult Function(String courseId) deleteCourse,
    required TResult Function(String courseId, String name) updateCourse,
    required TResult Function(String courseId, String studentEmail)
        addStudentToCourse,
    required TResult Function(String courseId, String studentEmail)
        removeStudentFromCourse,
    required TResult Function() removedUpdatedCourseName,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCourses,
    TResult Function(String name)? createCourse,
    TResult Function(String courseId)? deleteCourse,
    TResult Function(String courseId, String name)? updateCourse,
    TResult Function(String courseId, String studentEmail)? addStudentToCourse,
    TResult Function(String courseId, String studentEmail)?
        removeStudentFromCourse,
    TResult Function()? removedUpdatedCourseName,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCourses value) getCourses,
    required TResult Function(_CreateCourse value) createCourse,
    required TResult Function(_DeleteCourse value) deleteCourse,
    required TResult Function(_UpdateCourse value) updateCourse,
    required TResult Function(_AddStudentToCourse value) addStudentToCourse,
    required TResult Function(_RemoveStudentFromCourse value)
        removeStudentFromCourse,
    required TResult Function(_RemoveUpdatedCourseName value)
        removedUpdatedCourseName,
    required TResult Function(_Reset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCourses value)? getCourses,
    TResult Function(_CreateCourse value)? createCourse,
    TResult Function(_DeleteCourse value)? deleteCourse,
    TResult Function(_UpdateCourse value)? updateCourse,
    TResult Function(_AddStudentToCourse value)? addStudentToCourse,
    TResult Function(_RemoveStudentFromCourse value)? removeStudentFromCourse,
    TResult Function(_RemoveUpdatedCourseName value)? removedUpdatedCourseName,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements CourseEvent {
  const factory _Reset() = _$_Reset;
}

/// @nodoc
class _$CourseStateTearOff {
  const _$CourseStateTearOff();

  _CourseState call(
      {required List<CourseModel> courses,
      required String? updatedCourseName,
      required Option<Either<CourseFailure, List<CourseModel>>>
          getCoursesOption,
      required Option<Either<CourseFailure, Unit>> createCourseOption,
      required Option<Either<CourseFailure, Unit>> deleteCourseOption,
      required Option<Either<CourseFailure, Unit>> updateCourseOption,
      required Option<Either<CourseFailure, Unit>> sendInvitationOption,
      required Option<Either<CourseFailure, Unit>> removeStudentOption,}) {
    return _CourseState(
      courses: courses,
      updatedCourseName: updatedCourseName,
      getCoursesOption: getCoursesOption,
      createCourseOption: createCourseOption,
      deleteCourseOption: deleteCourseOption,
      updateCourseOption: updateCourseOption,
      sendInvitationOption: sendInvitationOption,
      removeStudentOption: removeStudentOption,
    );
  }
}

/// @nodoc
const $CourseState = _$CourseStateTearOff();

/// @nodoc
mixin _$CourseState {
  List<CourseModel> get courses => throw _privateConstructorUsedError;
  String? get updatedCourseName => throw _privateConstructorUsedError;
  Option<Either<CourseFailure, List<CourseModel>>> get getCoursesOption =>
      throw _privateConstructorUsedError;
  Option<Either<CourseFailure, Unit>> get createCourseOption =>
      throw _privateConstructorUsedError;
  Option<Either<CourseFailure, Unit>> get deleteCourseOption =>
      throw _privateConstructorUsedError;
  Option<Either<CourseFailure, Unit>> get updateCourseOption =>
      throw _privateConstructorUsedError;
  Option<Either<CourseFailure, Unit>> get sendInvitationOption =>
      throw _privateConstructorUsedError;
  Option<Either<CourseFailure, Unit>> get removeStudentOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseStateCopyWith<CourseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseStateCopyWith<$Res> {
  factory $CourseStateCopyWith(
          CourseState value, $Res Function(CourseState) then,) =
      _$CourseStateCopyWithImpl<$Res>;
  $Res call(
      {List<CourseModel> courses,
      String? updatedCourseName,
      Option<Either<CourseFailure, List<CourseModel>>> getCoursesOption,
      Option<Either<CourseFailure, Unit>> createCourseOption,
      Option<Either<CourseFailure, Unit>> deleteCourseOption,
      Option<Either<CourseFailure, Unit>> updateCourseOption,
      Option<Either<CourseFailure, Unit>> sendInvitationOption,
      Option<Either<CourseFailure, Unit>> removeStudentOption,});
}

/// @nodoc
class _$CourseStateCopyWithImpl<$Res> implements $CourseStateCopyWith<$Res> {
  _$CourseStateCopyWithImpl(this._value, this._then);

  final CourseState _value;
  // ignore: unused_field
  final $Res Function(CourseState) _then;

  @override
  $Res call({
    Object? courses = freezed,
    Object? updatedCourseName = freezed,
    Object? getCoursesOption = freezed,
    Object? createCourseOption = freezed,
    Object? deleteCourseOption = freezed,
    Object? updateCourseOption = freezed,
    Object? sendInvitationOption = freezed,
    Object? removeStudentOption = freezed,
  }) {
    return _then(_value.copyWith(
      courses: courses == freezed
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
      updatedCourseName: updatedCourseName == freezed
          ? _value.updatedCourseName
          : updatedCourseName // ignore: cast_nullable_to_non_nullable
              as String?,
      getCoursesOption: getCoursesOption == freezed
          ? _value.getCoursesOption
          : getCoursesOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CourseFailure, List<CourseModel>>>,
      createCourseOption: createCourseOption == freezed
          ? _value.createCourseOption
          : createCourseOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CourseFailure, Unit>>,
      deleteCourseOption: deleteCourseOption == freezed
          ? _value.deleteCourseOption
          : deleteCourseOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CourseFailure, Unit>>,
      updateCourseOption: updateCourseOption == freezed
          ? _value.updateCourseOption
          : updateCourseOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CourseFailure, Unit>>,
      sendInvitationOption: sendInvitationOption == freezed
          ? _value.sendInvitationOption
          : sendInvitationOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CourseFailure, Unit>>,
      removeStudentOption: removeStudentOption == freezed
          ? _value.removeStudentOption
          : removeStudentOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CourseFailure, Unit>>,
    ),);
  }
}

/// @nodoc
abstract class _$CourseStateCopyWith<$Res>
    implements $CourseStateCopyWith<$Res> {
  factory _$CourseStateCopyWith(
          _CourseState value, $Res Function(_CourseState) then,) =
      __$CourseStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<CourseModel> courses,
      String? updatedCourseName,
      Option<Either<CourseFailure, List<CourseModel>>> getCoursesOption,
      Option<Either<CourseFailure, Unit>> createCourseOption,
      Option<Either<CourseFailure, Unit>> deleteCourseOption,
      Option<Either<CourseFailure, Unit>> updateCourseOption,
      Option<Either<CourseFailure, Unit>> sendInvitationOption,
      Option<Either<CourseFailure, Unit>> removeStudentOption,});
}

/// @nodoc
class __$CourseStateCopyWithImpl<$Res> extends _$CourseStateCopyWithImpl<$Res>
    implements _$CourseStateCopyWith<$Res> {
  __$CourseStateCopyWithImpl(
      _CourseState value, $Res Function(_CourseState) then,)
      : super(value, (v) => then(v as _CourseState));

  @override
  _CourseState get _value => super._value as _CourseState;

  @override
  $Res call({
    Object? courses = freezed,
    Object? updatedCourseName = freezed,
    Object? getCoursesOption = freezed,
    Object? createCourseOption = freezed,
    Object? deleteCourseOption = freezed,
    Object? updateCourseOption = freezed,
    Object? sendInvitationOption = freezed,
    Object? removeStudentOption = freezed,
  }) {
    return _then(_CourseState(
      courses: courses == freezed
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
      updatedCourseName: updatedCourseName == freezed
          ? _value.updatedCourseName
          : updatedCourseName // ignore: cast_nullable_to_non_nullable
              as String?,
      getCoursesOption: getCoursesOption == freezed
          ? _value.getCoursesOption
          : getCoursesOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CourseFailure, List<CourseModel>>>,
      createCourseOption: createCourseOption == freezed
          ? _value.createCourseOption
          : createCourseOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CourseFailure, Unit>>,
      deleteCourseOption: deleteCourseOption == freezed
          ? _value.deleteCourseOption
          : deleteCourseOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CourseFailure, Unit>>,
      updateCourseOption: updateCourseOption == freezed
          ? _value.updateCourseOption
          : updateCourseOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CourseFailure, Unit>>,
      sendInvitationOption: sendInvitationOption == freezed
          ? _value.sendInvitationOption
          : sendInvitationOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CourseFailure, Unit>>,
      removeStudentOption: removeStudentOption == freezed
          ? _value.removeStudentOption
          : removeStudentOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CourseFailure, Unit>>,
    ),);
  }
}

/// @nodoc

class _$_CourseState implements _CourseState {
  const _$_CourseState(
      {required this.courses,
      required this.updatedCourseName,
      required this.getCoursesOption,
      required this.createCourseOption,
      required this.deleteCourseOption,
      required this.updateCourseOption,
      required this.sendInvitationOption,
      required this.removeStudentOption,});

  @override
  final List<CourseModel> courses;
  @override
  final String? updatedCourseName;
  @override
  final Option<Either<CourseFailure, List<CourseModel>>> getCoursesOption;
  @override
  final Option<Either<CourseFailure, Unit>> createCourseOption;
  @override
  final Option<Either<CourseFailure, Unit>> deleteCourseOption;
  @override
  final Option<Either<CourseFailure, Unit>> updateCourseOption;
  @override
  final Option<Either<CourseFailure, Unit>> sendInvitationOption;
  @override
  final Option<Either<CourseFailure, Unit>> removeStudentOption;

  @override
  String toString() {
    return 'CourseState(courses: $courses, updatedCourseName: $updatedCourseName, getCoursesOption: $getCoursesOption, createCourseOption: $createCourseOption, deleteCourseOption: $deleteCourseOption, updateCourseOption: $updateCourseOption, sendInvitationOption: $sendInvitationOption, removeStudentOption: $removeStudentOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CourseState &&
            (identical(other.courses, courses) ||
                const DeepCollectionEquality()
                    .equals(other.courses, courses)) &&
            (identical(other.updatedCourseName, updatedCourseName) ||
                const DeepCollectionEquality()
                    .equals(other.updatedCourseName, updatedCourseName)) &&
            (identical(other.getCoursesOption, getCoursesOption) ||
                const DeepCollectionEquality()
                    .equals(other.getCoursesOption, getCoursesOption)) &&
            (identical(other.createCourseOption, createCourseOption) ||
                const DeepCollectionEquality()
                    .equals(other.createCourseOption, createCourseOption)) &&
            (identical(other.deleteCourseOption, deleteCourseOption) ||
                const DeepCollectionEquality()
                    .equals(other.deleteCourseOption, deleteCourseOption)) &&
            (identical(other.updateCourseOption, updateCourseOption) ||
                const DeepCollectionEquality()
                    .equals(other.updateCourseOption, updateCourseOption)) &&
            (identical(other.sendInvitationOption, sendInvitationOption) ||
                const DeepCollectionEquality().equals(
                    other.sendInvitationOption, sendInvitationOption,)) &&
            (identical(other.removeStudentOption, removeStudentOption) ||
                const DeepCollectionEquality()
                    .equals(other.removeStudentOption, removeStudentOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(courses) ^
      const DeepCollectionEquality().hash(updatedCourseName) ^
      const DeepCollectionEquality().hash(getCoursesOption) ^
      const DeepCollectionEquality().hash(createCourseOption) ^
      const DeepCollectionEquality().hash(deleteCourseOption) ^
      const DeepCollectionEquality().hash(updateCourseOption) ^
      const DeepCollectionEquality().hash(sendInvitationOption) ^
      const DeepCollectionEquality().hash(removeStudentOption);

  @JsonKey(ignore: true)
  @override
  _$CourseStateCopyWith<_CourseState> get copyWith =>
      __$CourseStateCopyWithImpl<_CourseState>(this, _$identity);
}

abstract class _CourseState implements CourseState {
  const factory _CourseState(
          {required List<CourseModel> courses,
          required String? updatedCourseName,
          required Option<Either<CourseFailure, List<CourseModel>>>
              getCoursesOption,
          required Option<Either<CourseFailure, Unit>> createCourseOption,
          required Option<Either<CourseFailure, Unit>> deleteCourseOption,
          required Option<Either<CourseFailure, Unit>> updateCourseOption,
          required Option<Either<CourseFailure, Unit>> sendInvitationOption,
          required Option<Either<CourseFailure, Unit>> removeStudentOption,}) =
      _$_CourseState;

  @override
  List<CourseModel> get courses => throw _privateConstructorUsedError;
  @override
  String? get updatedCourseName => throw _privateConstructorUsedError;
  @override
  Option<Either<CourseFailure, List<CourseModel>>> get getCoursesOption =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<CourseFailure, Unit>> get createCourseOption =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<CourseFailure, Unit>> get deleteCourseOption =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<CourseFailure, Unit>> get updateCourseOption =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<CourseFailure, Unit>> get sendInvitationOption =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<CourseFailure, Unit>> get removeStudentOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CourseStateCopyWith<_CourseState> get copyWith =>
      throw _privateConstructorUsedError;
}
