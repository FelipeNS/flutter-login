import 'package:flutter_login/model/user.model.dart';
import 'package:flutter_login/view-model/user.viewmodel.dart';

abstract class IUser {
  Future<UserModel> create(UserViewModel model);
}