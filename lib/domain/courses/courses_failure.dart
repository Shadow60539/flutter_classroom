import 'package:freezed_annotation/freezed_annotation.dart';

part 'courses_failure.freezed.dart';

@freezed
class CourseFailure with _$CourseFailure {
  const factory CourseFailure.clientFailure() = _ClientFailure;
  const factory CourseFailure.serverFailure() = _ServerFailure;
  const factory CourseFailure.studentAlreadyInvited() = _StudentAlreadyInvitedFailure;
  const factory CourseFailure.studentAlreadyExist() = _StudentAlreadyExistFailure;
}
