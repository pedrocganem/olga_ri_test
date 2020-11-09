import 'package:mobx/mobx.dart';
part 'user.g.dart';

class Users = _UsersBase with _$Users;

abstract class _UsersBase with Store {
  @observable
  String email = '';
  @action
  changeEmail(String newEmail) => email = newEmail;

  @observable
  String password = '';
  @action
  changePassword(String newPassword) => password = newPassword;
}
