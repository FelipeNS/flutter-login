import 'package:flutter_login/interface/auth.interface.dart';
import 'package:flutter_login/model/user.model.dart';
import 'package:flutter_login/view-model/auth.viewmodel.dart';

class AuthRepository implements IAuth {
  @override
  Future<UserModel> login(AuthViewModel model) async {
    await Future.delayed(const Duration(milliseconds: 1500));

    if(model.email != "user@email.com") {
      throw Exception("Incorrect email or password");
    }

    if(model.password != "123456") {
      throw Exception("Incorrect email or password");
    }

    var user = UserModel();

    user.id = "asd123asd33g";
    user.name = "John Doe";
    user.email = model.email;
    user.avatar = "https://i.pravatar.cc/400";
    user.token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c";

    return user;
  }
}