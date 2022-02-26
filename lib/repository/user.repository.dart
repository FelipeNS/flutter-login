import 'dart:convert';

import 'package:flutter_login/interface/user.interface.dart';
import 'package:flutter_login/model/user.model.dart';
import 'package:flutter_login/services/services.dart';
import 'package:flutter_login/view-model/user.viewmodel.dart';
import 'package:http/http.dart' as http;
class UserRepository implements IUser {
  @override
  Future<UserModel> create(UserViewModel model) async {
    var response = await http.post(ApiService.store,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'name': model.name,
        'email': model.email,
        'password': model.password,
      })
    );

    var body = jsonDecode(response.body);

    if(response.statusCode != 201) {
      throw Exception(body['message']);
    }

    return UserModel.fromJson(body);
  }
}