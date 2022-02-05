import 'package:flutter_login/model/user.model.dart';

abstract class IUser {
  Future<UserModel> create(UserModel user);
}