import 'package:hive/hive.dart';

part 'user_model.g.dart';

@HiveType(typeId: 0)
class UserModel {
  UserModel({
    required this.roleId,
    required this.email,
  });

  @HiveField(0)
  final int roleId;
  @HiveField(1)
  final String email;
}
