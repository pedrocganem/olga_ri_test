// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Users on _UsersBase, Store {
  final _$emailAtom = Atom(name: '_UsersBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$passwordAtom = Atom(name: '_UsersBase.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$_UsersBaseActionController = ActionController(name: '_UsersBase');

  @override
  dynamic changeEmail(String newEmail) {
    final _$actionInfo = _$_UsersBaseActionController.startAction(
        name: '_UsersBase.changeEmail');
    try {
      return super.changeEmail(newEmail);
    } finally {
      _$_UsersBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changePassword(String newPassword) {
    final _$actionInfo = _$_UsersBaseActionController.startAction(
        name: '_UsersBase.changePassword');
    try {
      return super.changePassword(newPassword);
    } finally {
      _$_UsersBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password}
    ''';
  }
}
