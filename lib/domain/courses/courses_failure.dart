import 'package:freezed_annotation/freezed_annotation.dart';

part 'courses_failure.freezed.dart';

@freezed
class CourseFailure with _$CourseFailure {
  const factory CourseFailure.clientFailure() = _ClientFailure;
  const factory CourseFailure.serverFailure() = _ServerFailure;
}
