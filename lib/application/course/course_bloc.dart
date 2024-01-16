import 'dart:async';

import 'package:classroom/core/utils/custom_build_context.dart';
import 'package:classroom/domain/courses/course_model.dart';
import 'package:classroom/domain/courses/courses_failure.dart';
import 'package:classroom/domain/courses/i_courses_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'course_bloc.freezed.dart';
part 'course_event.dart';
part 'course_state.dart';

@injectable
@prod
class CourseBloc extends Bloc<CourseEvent, CourseState> {
  CourseBloc(this._coursesRepo) : super(CourseState.initial()) {
    on<_GetCourses>(_onGetCourses);
    on<_CreateCourse>(_onCreateCourse);
    on<_AddStudentToCourse>(_onAddStudentToCourse);
    on<_DeleteCourse>(_onDeleteCourse);
    on<_UpdateCourse>(_onUpdateCourse);
    on<_RemoveStudentFromCourse>(_onRemoveStudentFromCourse);
    on<_RemoveUpdatedCourseName>(_onRemoveUpdatedCourseName);
    on<_Reset>(_onReset);
  }

  final ICoursesRepo _coursesRepo;

  static void addEventWithoutContext(CourseEvent e) =>
      BlocProvider.of<CourseBloc>(context).add(e);

  FutureOr<void> _onGetCourses(_GetCourses e, Emitter<CourseState> emit) async {
    emit(state.copyWith(getCoursesOption: const None()));
    final failureOrSuccess = await _coursesRepo.getCourses();
    emit(
      failureOrSuccess.fold(
        (l) => state.copyWith(getCoursesOption: Some(Left(l))),
        (r) => state.copyWith(getCoursesOption: Some(Right(r)), courses: r),
      ),
    );
  }

  FutureOr<void> _onCreateCourse(
    _CreateCourse e,
    Emitter<CourseState> emit,
  ) async {
    emit(state.copyWith(createCourseOption: const None()));
    final failureOrSuccess = await _coursesRepo.createCourse(e.name);
    emit(
      failureOrSuccess.fold(
        (l) => state.copyWith(createCourseOption: Some(Left(l))),
        (r) {
          state.courses.insert(0, r);
          return state.copyWith(createCourseOption: const Some(Right(unit)));
        },
      ),
    );
  }

  FutureOr<void> _onAddStudentToCourse(
    _AddStudentToCourse e,
    Emitter<CourseState> emit,
  ) async {
    emit(state.copyWith(sendInvitationOption: const None()));
    final failureOrSuccess = await _coursesRepo.addStudentToCourse(
      courseId: e.courseId,
      studentEmail: e.studentEmail,
    );
    emit(
      failureOrSuccess.fold(
        (l) => state.copyWith(sendInvitationOption: Some(Left(l))),
        (r) => state.copyWith(sendInvitationOption: Some(Right(r))),
      ),
    );
  }

  FutureOr<void> _onDeleteCourse(
    _DeleteCourse e,
    Emitter<CourseState> emit,
  ) async {
    emit(state.copyWith(deleteCourseOption: const None()));
    final failureOrSuccess = await _coursesRepo.deleteCourse(e.courseId);
    emit(
      failureOrSuccess.fold(
        (l) => state.copyWith(deleteCourseOption: Some(Left(l))),
        (r) {
          final index =
              state.courses.indexWhere((element) => element.id == e.courseId);
          state.courses.removeAt(index);
          return state.copyWith(deleteCourseOption: Some(Right(r)));
        },
      ),
    );
  }

  FutureOr<void> _onUpdateCourse(
    _UpdateCourse e,
    Emitter<CourseState> emit,
  ) async {
    emit(state.copyWith(updateCourseOption: const None()));
    final failureOrSuccess =
        await _coursesRepo.updateCourse(courseId: e.courseId, name: e.name);
    emit(
      failureOrSuccess.fold(
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
      ),
    );
  }

  FutureOr<void> _onRemoveStudentFromCourse(
    _RemoveStudentFromCourse e,
    Emitter<CourseState> emit,
  ) async {
    emit(state.copyWith(removeStudentOption: const None()));
    final failureOrSuccess = await _coursesRepo.removeStudentFromCourse(
      courseId: e.courseId,
      studentEmail: e.studentEmail,
    );
    emit(
      failureOrSuccess.fold(
        (l) => state.copyWith(removeStudentOption: Some(Left(l))),
        (r) {
          state.courses
              .firstWhere((element) => element.id == e.courseId)
              .students!
              .removeWhere(
                (element) => element.profile!.emailAddress == e.studentEmail,
              );

          return state.copyWith(removeStudentOption: Some(Right(r)));
        },
      ),
    );
  }

  FutureOr<void> _onRemoveUpdatedCourseName(
    _RemoveUpdatedCourseName e,
    Emitter<CourseState> emit,
  ) {
    emit(state.copyWith(updatedCourseName: null));
  }

  FutureOr<void> _onReset(_Reset e, Emitter<CourseState> emit) async {
    emit(CourseState.initial());
  }
}
