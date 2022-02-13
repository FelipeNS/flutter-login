import 'package:flutter_login/model/user.model.dart';
import 'package:flutter_login/view-model/auth.viewmodel.dart';

abstract class IAuth {
  Future<UserModel> login(AuthViewModel model);
}