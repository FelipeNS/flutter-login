import 'package:mobx/mobx.dart';

part 'app.store.g.dart';

class AppStore = _AppStore with _$AppStore;

abstract class _AppStore with Store {
  @observable
  String? id = "";
  @observable
  String? name = "";
  @observable
  String? email = "";
  @observable
  String? avatar = "";
  @observable
  String? token = "";

  @action
  void setUser(
    String? sId,
    String? sName,
    String? sEmail,
    String? sAvatar,
    String? sToken,
  ) {
    id = sId;
    name = sName;
    email = sEmail;
    avatar = sAvatar;
    token = sToken;
  }
}