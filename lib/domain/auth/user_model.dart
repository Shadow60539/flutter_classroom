import 'package:firebase_auth/firebase_auth.dart';
import 'package:hive/hive.dart';

part 'user_model.g.dart';

@HiveType(typeId: 0)
class UserModel {
  UserModel({
    this.roleId,
    required this.email,
    required this.id,
    this.userName,
    this.gmail,
  });

  @HiveField(0)
  final int? roleId;
  @HiveField(1)
  final String email;
  @HiveField(2)
  final String? userName;
  @HiveField(3)
  final String? id;
  @HiveField(4)
  final String? gmail;

  factory UserModel.fromCredential(UserCredential userCredential) => UserModel(
        email: userCredential.user!.email!,
        id: userCredential.user!.uid,
      );

  UserModel copyWith({
    int? roleId,
    String? email,
    String? userName,
    String? id,
    String? gmail,
  }) =>
      UserModel(
        email: email ?? this.email,
        gmail: gmail ?? this.gmail,
        id: id ?? this.id,
        roleId: roleId ?? this.roleId,
        userName: userName ?? this.userName,
      );
}
