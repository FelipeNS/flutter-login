import 'package:flutter_login/model/user.model.dart';
import 'package:flutter_login/repository/user.repository.dart';
import 'package:flutter_login/view-model/user.viewmodel.dart';

class UserController {
  final UserRepository _repository;

  UserController(
    this._repository,
  );

  Future<UserModel> create(UserViewModel model) async {
    var user = await _repository.create(model);

    return user;
  }
}
