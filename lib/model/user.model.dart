class UserModel {
  String? id;
  String? name;
  String? email;
  String? password;
  String? token;

  UserModel({this.id, this.name, this.email, this.password, this.token});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['password'] = password;
    data['token'] = token;
    return data;
  }
}