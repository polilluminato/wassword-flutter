// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyPassword {
  bool get withLowercase;
  bool get withUppercase;
  bool get withNumbers;
  bool get withSpecial;
  int get length;
  String get password;

  /// Create a copy of MyPassword
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MyPasswordCopyWith<MyPassword> get copyWith =>
      _$MyPasswordCopyWithImpl<MyPassword>(this as MyPassword, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MyPassword &&
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

  @override
  String toString() {
    return 'MyPassword(withLowercase: $withLowercase, withUppercase: $withUppercase, withNumbers: $withNumbers, withSpecial: $withSpecial, length: $length, password: $password)';
  }
}

/// @nodoc
abstract mixin class $MyPasswordCopyWith<$Res> {
  factory $MyPasswordCopyWith(
          MyPassword value, $Res Function(MyPassword) _then) =
      _$MyPasswordCopyWithImpl;
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
class _$MyPasswordCopyWithImpl<$Res> implements $MyPasswordCopyWith<$Res> {
  _$MyPasswordCopyWithImpl(this._self, this._then);

  final MyPassword _self;
  final $Res Function(MyPassword) _then;

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
    return _then(_self.copyWith(
      withLowercase: null == withLowercase
          ? _self.withLowercase
          : withLowercase // ignore: cast_nullable_to_non_nullable
              as bool,
      withUppercase: null == withUppercase
          ? _self.withUppercase
          : withUppercase // ignore: cast_nullable_to_non_nullable
              as bool,
      withNumbers: null == withNumbers
          ? _self.withNumbers
          : withNumbers // ignore: cast_nullable_to_non_nullable
              as bool,
      withSpecial: null == withSpecial
          ? _self.withSpecial
          : withSpecial // ignore: cast_nullable_to_non_nullable
              as bool,
      length: null == length
          ? _self.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [MyPassword].
extension MyPasswordPatterns on MyPassword {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MyPassword value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MyPassword() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MyPassword value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MyPassword():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MyPassword value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MyPassword() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool withLowercase, bool withUppercase, bool withNumbers,
            bool withSpecial, int length, String password)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MyPassword() when $default != null:
        return $default(_that.withLowercase, _that.withUppercase,
            _that.withNumbers, _that.withSpecial, _that.length, _that.password);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool withLowercase, bool withUppercase, bool withNumbers,
            bool withSpecial, int length, String password)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MyPassword():
        return $default(_that.withLowercase, _that.withUppercase,
            _that.withNumbers, _that.withSpecial, _that.length, _that.password);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool withLowercase, bool withUppercase, bool withNumbers,
            bool withSpecial, int length, String password)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MyPassword() when $default != null:
        return $default(_that.withLowercase, _that.withUppercase,
            _that.withNumbers, _that.withSpecial, _that.length, _that.password);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _MyPassword implements MyPassword {
  _MyPassword(
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

  /// Create a copy of MyPassword
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MyPasswordCopyWith<_MyPassword> get copyWith =>
      __$MyPasswordCopyWithImpl<_MyPassword>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MyPassword &&
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

  @override
  String toString() {
    return 'MyPassword(withLowercase: $withLowercase, withUppercase: $withUppercase, withNumbers: $withNumbers, withSpecial: $withSpecial, length: $length, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$MyPasswordCopyWith<$Res>
    implements $MyPasswordCopyWith<$Res> {
  factory _$MyPasswordCopyWith(
          _MyPassword value, $Res Function(_MyPassword) _then) =
      __$MyPasswordCopyWithImpl;
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
class __$MyPasswordCopyWithImpl<$Res> implements _$MyPasswordCopyWith<$Res> {
  __$MyPasswordCopyWithImpl(this._self, this._then);

  final _MyPassword _self;
  final $Res Function(_MyPassword) _then;

  /// Create a copy of MyPassword
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? withLowercase = null,
    Object? withUppercase = null,
    Object? withNumbers = null,
    Object? withSpecial = null,
    Object? length = null,
    Object? password = null,
  }) {
    return _then(_MyPassword(
      withLowercase: null == withLowercase
          ? _self.withLowercase
          : withLowercase // ignore: cast_nullable_to_non_nullable
              as bool,
      withUppercase: null == withUppercase
          ? _self.withUppercase
          : withUppercase // ignore: cast_nullable_to_non_nullable
              as bool,
      withNumbers: null == withNumbers
          ? _self.withNumbers
          : withNumbers // ignore: cast_nullable_to_non_nullable
              as bool,
      withSpecial: null == withSpecial
          ? _self.withSpecial
          : withSpecial // ignore: cast_nullable_to_non_nullable
              as bool,
      length: null == length
          ? _self.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
