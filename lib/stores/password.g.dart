// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Password on _Password, Store {
  final _$isWithLettersAtom = Atom(name: '_Password.isWithLetters');

  @override
  bool get isWithLetters {
    _$isWithLettersAtom.reportRead();
    return super.isWithLetters;
  }

  @override
  set isWithLetters(bool value) {
    _$isWithLettersAtom.reportWrite(value, super.isWithLetters, () {
      super.isWithLetters = value;
    });
  }

  final _$isWithUppercaseAtom = Atom(name: '_Password.isWithUppercase');

  @override
  bool get isWithUppercase {
    _$isWithUppercaseAtom.reportRead();
    return super.isWithUppercase;
  }

  @override
  set isWithUppercase(bool value) {
    _$isWithUppercaseAtom.reportWrite(value, super.isWithUppercase, () {
      super.isWithUppercase = value;
    });
  }

  final _$isWithNumbersAtom = Atom(name: '_Password.isWithNumbers');

  @override
  bool get isWithNumbers {
    _$isWithNumbersAtom.reportRead();
    return super.isWithNumbers;
  }

  @override
  set isWithNumbers(bool value) {
    _$isWithNumbersAtom.reportWrite(value, super.isWithNumbers, () {
      super.isWithNumbers = value;
    });
  }

  final _$isWithSpecialAtom = Atom(name: '_Password.isWithSpecial');

  @override
  bool get isWithSpecial {
    _$isWithSpecialAtom.reportRead();
    return super.isWithSpecial;
  }

  @override
  set isWithSpecial(bool value) {
    _$isWithSpecialAtom.reportWrite(value, super.isWithSpecial, () {
      super.isWithSpecial = value;
    });
  }

  final _$numberCharPasswordAtom = Atom(name: '_Password.numberCharPassword');

  @override
  double get numberCharPassword {
    _$numberCharPasswordAtom.reportRead();
    return super.numberCharPassword;
  }

  @override
  set numberCharPassword(double value) {
    _$numberCharPasswordAtom.reportWrite(value, super.numberCharPassword, () {
      super.numberCharPassword = value;
    });
  }

  final _$passwordAtom = Atom(name: '_Password.password');

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

  final _$_PasswordActionController = ActionController(name: '_Password');

  @override
  void generateNew() {
    final _$actionInfo =
        _$_PasswordActionController.startAction(name: '_Password.generateNew');
    try {
      return super.generateNew();
    } finally {
      _$_PasswordActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeLetters(bool newValue) {
    final _$actionInfo = _$_PasswordActionController.startAction(
        name: '_Password.changeLetters');
    try {
      return super.changeLetters(newValue);
    } finally {
      _$_PasswordActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeUppercase(bool newValue) {
    final _$actionInfo = _$_PasswordActionController.startAction(
        name: '_Password.changeUppercase');
    try {
      return super.changeUppercase(newValue);
    } finally {
      _$_PasswordActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeNumbers(bool newValue) {
    final _$actionInfo = _$_PasswordActionController.startAction(
        name: '_Password.changeNumbers');
    try {
      return super.changeNumbers(newValue);
    } finally {
      _$_PasswordActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeSpecial(bool newValue) {
    final _$actionInfo = _$_PasswordActionController.startAction(
        name: '_Password.changeSpecial');
    try {
      return super.changeSpecial(newValue);
    } finally {
      _$_PasswordActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isWithLetters: ${isWithLetters},
isWithUppercase: ${isWithUppercase},
isWithNumbers: ${isWithNumbers},
isWithSpecial: ${isWithSpecial},
numberCharPassword: ${numberCharPassword},
password: ${password}
    ''';
  }
}
