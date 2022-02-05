import 'package:flutter_login/model/user.model.dart';
import 'package:flutter_login/repository/user.repository.dart';

class UserController {
  UserRepository _repository;

  UserController(
    this._repository,
  ) {
    _repository = UserRepository();
  }

  Future<UserModel> create(UserModel user) async {
    user = await _repository.create(user);

    return user;
  }
}
