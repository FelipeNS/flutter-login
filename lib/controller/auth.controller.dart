import 'package:flutter_login/model/user.model.dart';
import 'package:flutter_login/repository/aut.repository.dart';
import 'package:flutter_login/view-model/auth.viewmodel.dart';

class AuthController {
  final AuthRepository _repository;

  AuthController(
    this._repository,
  );

  Future<UserModel> login(AuthViewModel model) async {
    model.loading = true;

    var user;

    await _repository.login(model).then((value) {
      model.loading = false;

      user = value;
    }).catchError((error){
      model.loading = false;

      throw Exception(error.message.toString());
    });

    return user;
  }
}