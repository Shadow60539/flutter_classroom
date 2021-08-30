class CourseModel {
  const CourseModel({
    required this.id,
    required this.name,
    this.description,
    this.assignments,
    this.tests,
  });

  final int id;
  final String name;
  final String? description;
  final List<AssignmentModel>? assignments;
  final List<TestModel>? tests;

  CourseModel copyWith({
    int? id,
    String? name,
    String? description,
    List<AssignmentModel>? assignments,
    List<TestModel>? tests,
  }) =>
      CourseModel(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        assignments: assignments ?? this.assignments,
        tests: tests ?? this.tests,
      );
}

class AssignmentModel {
  const AssignmentModel({
    required this.id,
    required this.name,
    this.description,
  });
  final int id;
  final String name;
  final String? description;
}

class TestModel {
  const TestModel({
    required this.id,
    required this.name,
    this.description,
  });
  final int id;
  final String name;
  final String? description;
}
