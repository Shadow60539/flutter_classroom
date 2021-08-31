import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:classroom/core/utils/custom_build_context.dart';
import 'package:classroom/domain/courses/course_model.dart';
import 'package:classroom/domain/courses/courses_failure.dart';
import 'package:classroom/domain/courses/i_courses_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'course_bloc.freezed.dart';
part 'course_event.dart';
part 'course_state.dart';

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
      getCourses: (_) async* {
        yield state.copyWith(getCoursesOption: const None());
        final failureOrSuccess = await _coursesRepo.getCourses();
        yield failureOrSuccess.fold(
          (l) => state.copyWith(getCoursesOption: Some(Left(l))),
          (r) => state.copyWith(getCoursesOption: Some(Right(r)), courses: r),
        );
      },
      createCourse: (e) async* {
        yield state.copyWith(createCourseOption: const None());
        final failureOrSuccess = await _coursesRepo.createCourse(e.name);
        yield failureOrSuccess.fold(
          (l) => state.copyWith(createCourseOption: Some(Left(l))),
          (r) {
            state.courses.insert(0, r);
            return state.copyWith(createCourseOption: const Some(Right(unit)));
          },
        );
      },
      addStudentToCourse: (e) async* {
        yield state.copyWith(sendInvitationOption: const None());
        final failureOrSuccess = await _coursesRepo.addStudentToCourse(
            courseId: e.courseId, studentEmail: e.studentEmail);
        yield failureOrSuccess.fold(
          (l) => state.copyWith(sendInvitationOption: Some(Left(l))),
          (r) => state.copyWith(sendInvitationOption: Some(Right(r))),
        );
      },
      deleteCourse: (e) async* {
        yield state.copyWith(deleteCourseOption: const None());
        final failureOrSuccess = await _coursesRepo.deleteCourse(e.courseId);
        yield failureOrSuccess.fold(
          (l) => state.copyWith(deleteCourseOption: Some(Left(l))),
          (r) {
            final index =
                state.courses.indexWhere((element) => element.id == e.courseId);
            state.courses.removeAt(index);
            return state.copyWith(deleteCourseOption: Some(Right(r)));
          },
        );
      },
      updateCourse: (e) async* {
        yield state.copyWith(updateCourseOption: const None());
        final failureOrSuccess =
            await _coursesRepo.updateCourse(courseId: e.courseId, name: e.name);
        yield failureOrSuccess.fold(
          (l) => state.copyWith(updateCourseOption: Some(Left(l))),
          (r) {
            final index =
                state.courses.indexWhere((element) => element.id == e.courseId);
            final updatedCourse = state.courses[index].copyWith(name: e.name);
            state.courses.removeAt(index);
            state.courses.insert(index, updatedCourse);
            return state.copyWith(
              updateCourseOption: Some(Right(r)),
              updatedCourseName: e.name,
            );
          },
        );
      },
      removeStudentFromCourse: (e) async* {
        yield state.copyWith(removeStudentOption: const None());
        final failureOrSuccess = await _coursesRepo.removeStudentFromCourse(
            courseId: e.courseId, studentEmail: e.studentEmail);
        yield failureOrSuccess.fold(
          (l) => state.copyWith(removeStudentOption: Some(Left(l))),
          (r) {
            state.courses
                .firstWhere((element) => element.id == e.courseId)
                .students!
                .removeWhere((element) =>
                    element.profile!.emailAddress == e.studentEmail);

            return state.copyWith(removeStudentOption: Some(Right(r)));
          },
        );
      },
      removedUpdatedCourseName: (_) async* {
        yield state.copyWith(updatedCourseName: null);
      },
      reset: (_) async* {
        yield CourseState.initial();
      },
    );
  }
}
