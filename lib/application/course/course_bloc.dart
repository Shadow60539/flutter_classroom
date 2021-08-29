import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:classroom/core/utils/custom_build_context.dart';
import 'package:classroom/domain/courses/course_model.dart';
import 'package:classroom/domain/courses/courses_failure.dart';
import 'package:classroom/domain/courses/i_courses_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:googleapis/classroom/v1.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_event.dart';
part 'course_state.dart';

part 'course_bloc.freezed.dart';

@injectable
@prod
class CourseBloc extends Bloc<CourseEvent, CourseState> {
  CourseBloc(this._coursesRepo) : super(CourseState.initial());
  final ICoursesRepo _coursesRepo;

  static void addEventWithoutContext(CourseEvent e) =>
      BlocProvider.of<CourseBloc>(context).add(e);

  @override
  Stream<CourseState> mapEventToState(
    CourseEvent event,
  ) async* {
    yield* event.map(
      getCourses: (e) async* {
        yield state.copyWith(getCoursesOption: const None());
        final failureOrSuccess = await _coursesRepo.getCourses();
        yield failureOrSuccess.fold(
          (l) => state.copyWith(getCoursesOption: Some(Left(l))),
          (r) => state.copyWith(getCoursesOption: Some(Right(r)), courses: r),
        );
      },
    );
  }
}
