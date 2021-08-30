import 'package:classroom/core/strings.dart';
import 'package:classroom/domain/auth/user_model.dart';
import 'package:classroom/injection.dart';
import 'package:googleapis/classroom/v1.dart';
import 'package:hive/hive.dart';

class CourseModel {
  const CourseModel({
    required this.id,
    required this.name,
    this.description,
    this.students,
    this.teachers,
  });

  final String id;
  final String name;
  final String? description;
  final List<Student>? students;
  final List<Teacher>? teachers;

  bool get isCreatedByMe =>
      (getIt<Box>().get(HiveBoxNames.user) as UserModel).gmail ==
      teachers!.first.profile!.emailAddress;

  CourseModel copyWith({
    String? id,
    String? name,
    String? description,
    List<Student>? students,
    List<Invitation>? invitations,
    List<Teacher>? teachers,
  }) =>
      CourseModel(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        students: students ?? this.students,
        teachers: teachers ?? this.teachers,
      );
}
