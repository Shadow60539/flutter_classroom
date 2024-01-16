import 'package:classroom/presentation/core/clean_string.dart';

extension EmailValidator on String {
  bool isValidEmail() {
    return cleanString(this).isNotEmpty &&
        RegExp(r'''^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$''')
            .hasMatch(this);
  }
}

extension PasswordValidator on String {
  bool isValidPassword() {
    return cleanString(this).isNotEmpty &&
        RegExp(r'''^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$''').hasMatch(this);
  }
}

extension UsernameValidator on String {
  bool isValidUsername() {
    return cleanString(this).length >= 6;
  }
}
