import 'package:olga_ri_test2/app/data/models/user.dart';
import 'package:mobx/mobx.dart';
part 'login_email_controller.g.dart';

class UserController = _UserControllerBase with _$UserController;

abstract class _UserControllerBase with Store {
  Users user = Users();

  String isEmailValid() {
    if (user.email.isEmpty || !user.email.contains('joao.pinedo@olgary')) {
      return 'EMAIL INVALIDO. TENTE DE NOVO';
    }
    return null;
  }

  String isPasswordValid() {
    if (user.password.isEmpty || !user.password.contains('12345678')) {
      return 'SENHA INVALIDA. TENTE DE NOVO';
    }
    return null;
  }
}