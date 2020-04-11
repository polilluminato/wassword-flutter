// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Password on _Password, Store {
  final _$isWithLettersAtom = Atom(name: '_Password.isWithLetters');

  @override
  bool get isWithLetters {
    _$isWithLettersAtom.context.enforceReadPolicy(_$isWithLettersAtom);
    _$isWithLettersAtom.reportObserved();
    return super.isWithLetters;
  }

  @override
  set isWithLetters(bool value) {
    _$isWithLettersAtom.context.conditionallyRunInAction(() {
      super.isWithLetters = value;
      _$isWithLettersAtom.reportChanged();
    }, _$isWithLettersAtom, name: '${_$isWithLettersAtom.name}_set');
  }

  final _$isWithUppercaseAtom = Atom(name: '_Password.isWithUppercase');

  @override
  bool get isWithUppercase {
    _$isWithUppercaseAtom.context.enforceReadPolicy(_$isWithUppercaseAtom);
    _$isWithUppercaseAtom.reportObserved();
    return super.isWithUppercase;
  }

  @override
  set isWithUppercase(bool value) {
    _$isWithUppercaseAtom.context.conditionallyRunInAction(() {
      super.isWithUppercase = value;
      _$isWithUppercaseAtom.reportChanged();
    }, _$isWithUppercaseAtom, name: '${_$isWithUppercaseAtom.name}_set');
  }

  final _$isWithNumbersAtom = Atom(name: '_Password.isWithNumbers');

  @override
  bool get isWithNumbers {
    _$isWithNumbersAtom.context.enforceReadPolicy(_$isWithNumbersAtom);
    _$isWithNumbersAtom.reportObserved();
    return super.isWithNumbers;
  }

  @override
  set isWithNumbers(bool value) {
    _$isWithNumbersAtom.context.conditionallyRunInAction(() {
      super.isWithNumbers = value;
      _$isWithNumbersAtom.reportChanged();
    }, _$isWithNumbersAtom, name: '${_$isWithNumbersAtom.name}_set');
  }

  final _$isWithSpecialAtom = Atom(name: '_Password.isWithSpecial');

  @override
  bool get isWithSpecial {
    _$isWithSpecialAtom.context.enforceReadPolicy(_$isWithSpecialAtom);
    _$isWithSpecialAtom.reportObserved();
    return super.isWithSpecial;
  }

  @override
  set isWithSpecial(bool value) {
    _$isWithSpecialAtom.context.conditionallyRunInAction(() {
      super.isWithSpecial = value;
      _$isWithSpecialAtom.reportChanged();
    }, _$isWithSpecialAtom, name: '${_$isWithSpecialAtom.name}_set');
  }

  final _$numberCharPasswordAtom = Atom(name: '_Password.numberCharPassword');

  @override
  double get numberCharPassword {
    _$numberCharPasswordAtom.context
        .enforceReadPolicy(_$numberCharPasswordAtom);
    _$numberCharPasswordAtom.reportObserved();
    return super.numberCharPassword;
  }

  @override
  set numberCharPassword(double value) {
    _$numberCharPasswordAtom.context.conditionallyRunInAction(() {
      super.numberCharPassword = value;
      _$numberCharPasswordAtom.reportChanged();
    }, _$numberCharPasswordAtom, name: '${_$numberCharPasswordAtom.name}_set');
  }

  final _$passwordAtom = Atom(name: '_Password.password');

  @override
  String get password {
    _$passwordAtom.context.enforceReadPolicy(_$passwordAtom);
    _$passwordAtom.reportObserved();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.context.conditionallyRunInAction(() {
      super.password = value;
      _$passwordAtom.reportChanged();
    }, _$passwordAtom, name: '${_$passwordAtom.name}_set');
  }

  final _$_PasswordActionController = ActionController(name: '_Password');

  @override
  void generateNew() {
    final _$actionInfo = _$_PasswordActionController.startAction();
    try {
      return super.generateNew();
    } finally {
      _$_PasswordActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeLetters(bool newValue) {
    final _$actionInfo = _$_PasswordActionController.startAction();
    try {
      return super.changeLetters(newValue);
    } finally {
      _$_PasswordActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeUppercase(bool newValue) {
    final _$actionInfo = _$_PasswordActionController.startAction();
    try {
      return super.changeUppercase(newValue);
    } finally {
      _$_PasswordActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeNumbers(bool newValue) {
    final _$actionInfo = _$_PasswordActionController.startAction();
    try {
      return super.changeNumbers(newValue);
    } finally {
      _$_PasswordActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeSpecial(bool newValue) {
    final _$actionInfo = _$_PasswordActionController.startAction();
    try {
      return super.changeSpecial(newValue);
    } finally {
      _$_PasswordActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'isWithLetters: ${isWithLetters.toString()},isWithUppercase: ${isWithUppercase.toString()},isWithNumbers: ${isWithNumbers.toString()},isWithSpecial: ${isWithSpecial.toString()},numberCharPassword: ${numberCharPassword.toString()},password: ${password.toString()}';
    return '{$string}';
  }
}
