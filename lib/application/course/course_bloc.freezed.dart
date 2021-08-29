// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'course_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CourseEventTearOff {
  const _$CourseEventTearOff();

  _GetCourses getCourses() {
    return const _GetCourses();
  }
}

/// @nodoc
const $CourseEvent = _$CourseEventTearOff();

/// @nodoc
mixin _$CourseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCourses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCourses value) getCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCourses value)? getCourses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseEventCopyWith<$Res> {
  factory $CourseEventCopyWith(
          CourseEvent value, $Res Function(CourseEvent) then) =
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
          _GetCourses value, $Res Function(_GetCourses) then) =
      __$GetCoursesCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetCoursesCopyWithImpl<$Res> extends _$CourseEventCopyWithImpl<$Res>
    implements _$GetCoursesCopyWith<$Res> {
  __$GetCoursesCopyWithImpl(
      _GetCourses _value, $Res Function(_GetCourses) _then)
      : super(_value, (v) => _then(v as _GetCourses));

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
  }) {
    return getCourses();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCourses,
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
  }) {
    return getCourses(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCourses value)? getCourses,
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
class _$CourseStateTearOff {
  const _$CourseStateTearOff();

  _CourseState call(
      {required List<CourseModel> courses,
      required Option<Either<CourseFailure, List<CourseModel>>>
          getCoursesOption}) {
    return _CourseState(
      courses: courses,
      getCoursesOption: getCoursesOption,
    );
  }
}

/// @nodoc
const $CourseState = _$CourseStateTearOff();

/// @nodoc
mixin _$CourseState {
  List<CourseModel> get courses => throw _privateConstructorUsedError;
  Option<Either<CourseFailure, List<CourseModel>>> get getCoursesOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseStateCopyWith<CourseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseStateCopyWith<$Res> {
  factory $CourseStateCopyWith(
          CourseState value, $Res Function(CourseState) then) =
      _$CourseStateCopyWithImpl<$Res>;
  $Res call(
      {List<CourseModel> courses,
      Option<Either<CourseFailure, List<CourseModel>>> getCoursesOption});
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
    Object? getCoursesOption = freezed,
  }) {
    return _then(_value.copyWith(
      courses: courses == freezed
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
      getCoursesOption: getCoursesOption == freezed
          ? _value.getCoursesOption
          : getCoursesOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CourseFailure, List<CourseModel>>>,
    ));
  }
}

/// @nodoc
abstract class _$CourseStateCopyWith<$Res>
    implements $CourseStateCopyWith<$Res> {
  factory _$CourseStateCopyWith(
          _CourseState value, $Res Function(_CourseState) then) =
      __$CourseStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<CourseModel> courses,
      Option<Either<CourseFailure, List<CourseModel>>> getCoursesOption});
}

/// @nodoc
class __$CourseStateCopyWithImpl<$Res> extends _$CourseStateCopyWithImpl<$Res>
    implements _$CourseStateCopyWith<$Res> {
  __$CourseStateCopyWithImpl(
      _CourseState _value, $Res Function(_CourseState) _then)
      : super(_value, (v) => _then(v as _CourseState));

  @override
  _CourseState get _value => super._value as _CourseState;

  @override
  $Res call({
    Object? courses = freezed,
    Object? getCoursesOption = freezed,
  }) {
    return _then(_CourseState(
      courses: courses == freezed
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>,
      getCoursesOption: getCoursesOption == freezed
          ? _value.getCoursesOption
          : getCoursesOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<CourseFailure, List<CourseModel>>>,
    ));
  }
}

/// @nodoc

class _$_CourseState implements _CourseState {
  const _$_CourseState({required this.courses, required this.getCoursesOption});

  @override
  final List<CourseModel> courses;
  @override
  final Option<Either<CourseFailure, List<CourseModel>>> getCoursesOption;

  @override
  String toString() {
    return 'CourseState(courses: $courses, getCoursesOption: $getCoursesOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CourseState &&
            (identical(other.courses, courses) ||
                const DeepCollectionEquality()
                    .equals(other.courses, courses)) &&
            (identical(other.getCoursesOption, getCoursesOption) ||
                const DeepCollectionEquality()
                    .equals(other.getCoursesOption, getCoursesOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(courses) ^
      const DeepCollectionEquality().hash(getCoursesOption);

  @JsonKey(ignore: true)
  @override
  _$CourseStateCopyWith<_CourseState> get copyWith =>
      __$CourseStateCopyWithImpl<_CourseState>(this, _$identity);
}

abstract class _CourseState implements CourseState {
  const factory _CourseState(
      {required List<CourseModel> courses,
      required Option<Either<CourseFailure, List<CourseModel>>>
          getCoursesOption}) = _$_CourseState;

  @override
  List<CourseModel> get courses => throw _privateConstructorUsedError;
  @override
  Option<Either<CourseFailure, List<CourseModel>>> get getCoursesOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CourseStateCopyWith<_CourseState> get copyWith =>
      throw _privateConstructorUsedError;
}
