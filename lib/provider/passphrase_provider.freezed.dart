// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passphrase_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyPassphrase {
  WordlistEnum get wordlist;
  DividerEnum get divider;
  int get length;
  String get passphrase;

  /// Create a copy of MyPassphrase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MyPassphraseCopyWith<MyPassphrase> get copyWith =>
      _$MyPassphraseCopyWithImpl<MyPassphrase>(
          this as MyPassphrase, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MyPassphrase &&
            (identical(other.wordlist, wordlist) ||
                other.wordlist == wordlist) &&
            (identical(other.divider, divider) || other.divider == divider) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.passphrase, passphrase) ||
                other.passphrase == passphrase));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, wordlist, divider, length, passphrase);

  @override
  String toString() {
    return 'MyPassphrase(wordlist: $wordlist, divider: $divider, length: $length, passphrase: $passphrase)';
  }
}

/// @nodoc
abstract mixin class $MyPassphraseCopyWith<$Res> {
  factory $MyPassphraseCopyWith(
          MyPassphrase value, $Res Function(MyPassphrase) _then) =
      _$MyPassphraseCopyWithImpl;
  @useResult
  $Res call(
      {WordlistEnum wordlist,
      DividerEnum divider,
      int length,
      String passphrase});
}

/// @nodoc
class _$MyPassphraseCopyWithImpl<$Res> implements $MyPassphraseCopyWith<$Res> {
  _$MyPassphraseCopyWithImpl(this._self, this._then);

  final MyPassphrase _self;
  final $Res Function(MyPassphrase) _then;

  /// Create a copy of MyPassphrase
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wordlist = null,
    Object? divider = null,
    Object? length = null,
    Object? passphrase = null,
  }) {
    return _then(_self.copyWith(
      wordlist: null == wordlist
          ? _self.wordlist
          : wordlist // ignore: cast_nullable_to_non_nullable
              as WordlistEnum,
      divider: null == divider
          ? _self.divider
          : divider // ignore: cast_nullable_to_non_nullable
              as DividerEnum,
      length: null == length
          ? _self.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      passphrase: null == passphrase
          ? _self.passphrase
          : passphrase // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [MyPassphrase].
extension MyPassphrasePatterns on MyPassphrase {
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
    TResult Function(_MyPassphrase value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MyPassphrase() when $default != null:
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
    TResult Function(_MyPassphrase value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MyPassphrase():
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
    TResult? Function(_MyPassphrase value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MyPassphrase() when $default != null:
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
    TResult Function(WordlistEnum wordlist, DividerEnum divider, int length,
            String passphrase)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MyPassphrase() when $default != null:
        return $default(
            _that.wordlist, _that.divider, _that.length, _that.passphrase);
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
    TResult Function(WordlistEnum wordlist, DividerEnum divider, int length,
            String passphrase)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MyPassphrase():
        return $default(
            _that.wordlist, _that.divider, _that.length, _that.passphrase);
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
    TResult? Function(WordlistEnum wordlist, DividerEnum divider, int length,
            String passphrase)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MyPassphrase() when $default != null:
        return $default(
            _that.wordlist, _that.divider, _that.length, _that.passphrase);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _MyPassphrase implements MyPassphrase {
  _MyPassphrase(
      {required this.wordlist,
      required this.divider,
      required this.length,
      required this.passphrase});

  @override
  final WordlistEnum wordlist;
  @override
  final DividerEnum divider;
  @override
  final int length;
  @override
  final String passphrase;

  /// Create a copy of MyPassphrase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MyPassphraseCopyWith<_MyPassphrase> get copyWith =>
      __$MyPassphraseCopyWithImpl<_MyPassphrase>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MyPassphrase &&
            (identical(other.wordlist, wordlist) ||
                other.wordlist == wordlist) &&
            (identical(other.divider, divider) || other.divider == divider) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.passphrase, passphrase) ||
                other.passphrase == passphrase));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, wordlist, divider, length, passphrase);

  @override
  String toString() {
    return 'MyPassphrase(wordlist: $wordlist, divider: $divider, length: $length, passphrase: $passphrase)';
  }
}

/// @nodoc
abstract mixin class _$MyPassphraseCopyWith<$Res>
    implements $MyPassphraseCopyWith<$Res> {
  factory _$MyPassphraseCopyWith(
          _MyPassphrase value, $Res Function(_MyPassphrase) _then) =
      __$MyPassphraseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {WordlistEnum wordlist,
      DividerEnum divider,
      int length,
      String passphrase});
}

/// @nodoc
class __$MyPassphraseCopyWithImpl<$Res>
    implements _$MyPassphraseCopyWith<$Res> {
  __$MyPassphraseCopyWithImpl(this._self, this._then);

  final _MyPassphrase _self;
  final $Res Function(_MyPassphrase) _then;

  /// Create a copy of MyPassphrase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? wordlist = null,
    Object? divider = null,
    Object? length = null,
    Object? passphrase = null,
  }) {
    return _then(_MyPassphrase(
      wordlist: null == wordlist
          ? _self.wordlist
          : wordlist // ignore: cast_nullable_to_non_nullable
              as WordlistEnum,
      divider: null == divider
          ? _self.divider
          : divider // ignore: cast_nullable_to_non_nullable
              as DividerEnum,
      length: null == length
          ? _self.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      passphrase: null == passphrase
          ? _self.passphrase
          : passphrase // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
