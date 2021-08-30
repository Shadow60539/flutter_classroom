import 'package:googleapis/classroom/v1.dart';

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
