import 'package:flutter_login/interface/user.interface.dart';
import 'package:flutter_login/model/user.model.dart';

class UserRepository implements IUser {
  @override
  Future<UserModel> create(UserModel user) async {
    await Future.delayed(const Duration(milliseconds: 1500));

    user.id = "asd123asd33g";
    user.name = user.name;
    user.email = user.email;
    user.password = user.password;
    user.token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c";

    return user;
  }
}