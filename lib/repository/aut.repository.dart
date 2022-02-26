import 'dart:convert';

import 'package:flutter_login/interface/auth.interface.dart';
import 'package:flutter_login/model/user.model.dart';
import 'package:flutter_login/services/services.dart';
import 'package:flutter_login/view-model/auth.viewmodel.dart';
import 'package:http/http.dart' as http;

class AuthRepository implements IAuth {
  @override
  Future<UserModel> login(AuthViewModel model) async {
    var response = await http.post(ApiService.auth,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'email': model.email,
        'password': model.password,
      })
    );

    var body = jsonDecode(response.body);

    if(response.statusCode != 200) {
      throw Exception(body['message']);
    }

    return UserModel.fromJson(body);
  }
}