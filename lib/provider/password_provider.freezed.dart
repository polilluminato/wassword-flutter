// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyPassword {
  bool get withLowercase => throw _privateConstructorUsedError;
  bool get withUppercase => throw _privateConstructorUsedError;
  bool get withNumbers => throw _privateConstructorUsedError;
  bool get withSpecial => throw _privateConstructorUsedError;
  int get length => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Create a copy of MyPassword
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyPasswordCopyWith<MyPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyPasswordCopyWith<$Res> {
  factory $MyPasswordCopyWith(
          MyPassword value, $Res Function(MyPassword) then) =
      _$MyPasswordCopyWithImpl<$Res, MyPassword>;
  @useResult
  $Res call(
      {bool withLowercase,
      bool withUppercase,
      bool withNumbers,
      bool withSpecial,
      int length,
      String password});
}

/// @nodoc
class _$MyPasswordCopyWithImpl<$Res, $Val extends MyPassword>
    implements $MyPasswordCopyWith<$Res> {
  _$MyPasswordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyPassword
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? withLowercase = null,
    Object? withUppercase = null,
    Object? withNumbers = null,
    Object? withSpecial = null,
    Object? length = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      withLowercase: null == withLowercase
          ? _value.withLowercase
          : withLowercase // ignore: cast_nullable_to_non_nullable
              as bool,
      withUppercase: null == withUppercase
          ? _value.withUppercase
          : withUppercase // ignore: cast_nullable_to_non_nullable
              as bool,
      withNumbers: null == withNumbers
          ? _value.withNumbers
          : withNumbers // ignore: cast_nullable_to_non_nullable
              as bool,
      withSpecial: null == withSpecial
          ? _value.withSpecial
          : withSpecial // ignore: cast_nullable_to_non_nullable
              as bool,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyPasswordImplCopyWith<$Res>
    implements $MyPasswordCopyWith<$Res> {
  factory _$$MyPasswordImplCopyWith(
          _$MyPasswordImpl value, $Res Function(_$MyPasswordImpl) then) =
      __$$MyPasswordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool withLowercase,
      bool withUppercase,
      bool withNumbers,
      bool withSpecial,
      int length,
      String password});
}

/// @nodoc
class __$$MyPasswordImplCopyWithImpl<$Res>
    extends _$MyPasswordCopyWithImpl<$Res, _$MyPasswordImpl>
    implements _$$MyPasswordImplCopyWith<$Res> {
  __$$MyPasswordImplCopyWithImpl(
      _$MyPasswordImpl _value, $Res Function(_$MyPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyPassword
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? withLowercase = null,
    Object? withUppercase = null,
    Object? withNumbers = null,
    Object? withSpecial = null,
    Object? length = null,
    Object? password = null,
  }) {
    return _then(_$MyPasswordImpl(
      withLowercase: null == withLowercase
          ? _value.withLowercase
          : withLowercase // ignore: cast_nullable_to_non_nullable
              as bool,
      withUppercase: null == withUppercase
          ? _value.withUppercase
          : withUppercase // ignore: cast_nullable_to_non_nullable
              as bool,
      withNumbers: null == withNumbers
          ? _value.withNumbers
          : withNumbers // ignore: cast_nullable_to_non_nullable
              as bool,
      withSpecial: null == withSpecial
          ? _value.withSpecial
          : withSpecial // ignore: cast_nullable_to_non_nullable
              as bool,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MyPasswordImpl implements _MyPassword {
  _$MyPasswordImpl(
      {required this.withLowercase,
      required this.withUppercase,
      required this.withNumbers,
      required this.withSpecial,
      required this.length,
      required this.password});

  @override
  final bool withLowercase;
  @override
  final bool withUppercase;
  @override
  final bool withNumbers;
  @override
  final bool withSpecial;
  @override
  final int length;
  @override
  final String password;

  @override
  String toString() {
    return 'MyPassword(withLowercase: $withLowercase, withUppercase: $withUppercase, withNumbers: $withNumbers, withSpecial: $withSpecial, length: $length, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyPasswordImpl &&
            (identical(other.withLowercase, withLowercase) ||
                other.withLowercase == withLowercase) &&
            (identical(other.withUppercase, withUppercase) ||
                other.withUppercase == withUppercase) &&
            (identical(other.withNumbers, withNumbers) ||
                other.withNumbers == withNumbers) &&
            (identical(other.withSpecial, withSpecial) ||
                other.withSpecial == withSpecial) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, withLowercase, withUppercase,
      withNumbers, withSpecial, length, password);

  /// Create a copy of MyPassword
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyPasswordImplCopyWith<_$MyPasswordImpl> get copyWith =>
      __$$MyPasswordImplCopyWithImpl<_$MyPasswordImpl>(this, _$identity);
}

abstract class _MyPassword implements MyPassword {
  factory _MyPassword(
      {required final bool withLowercase,
      required final bool withUppercase,
      required final bool withNumbers,
      required final bool withSpecial,
      required final int length,
      required final String password}) = _$MyPasswordImpl;

  @override
  bool get withLowercase;
  @override
  bool get withUppercase;
  @override
  bool get withNumbers;
  @override
  bool get withSpecial;
  @override
  int get length;
  @override
  String get password;

  /// Create a copy of MyPassword
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyPasswordImplCopyWith<_$MyPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
