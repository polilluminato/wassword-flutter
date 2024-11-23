// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passphrase_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyPassphrase {
  WordlistEnum get wordlist => throw _privateConstructorUsedError;
  DividerEnum get divider => throw _privateConstructorUsedError;
  int get length => throw _privateConstructorUsedError;
  String get passphrase => throw _privateConstructorUsedError;

  /// Create a copy of MyPassphrase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyPassphraseCopyWith<MyPassphrase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyPassphraseCopyWith<$Res> {
  factory $MyPassphraseCopyWith(
          MyPassphrase value, $Res Function(MyPassphrase) then) =
      _$MyPassphraseCopyWithImpl<$Res, MyPassphrase>;
  @useResult
  $Res call(
      {WordlistEnum wordlist,
      DividerEnum divider,
      int length,
      String passphrase});
}

/// @nodoc
class _$MyPassphraseCopyWithImpl<$Res, $Val extends MyPassphrase>
    implements $MyPassphraseCopyWith<$Res> {
  _$MyPassphraseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      wordlist: null == wordlist
          ? _value.wordlist
          : wordlist // ignore: cast_nullable_to_non_nullable
              as WordlistEnum,
      divider: null == divider
          ? _value.divider
          : divider // ignore: cast_nullable_to_non_nullable
              as DividerEnum,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      passphrase: null == passphrase
          ? _value.passphrase
          : passphrase // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyPassphraseImplCopyWith<$Res>
    implements $MyPassphraseCopyWith<$Res> {
  factory _$$MyPassphraseImplCopyWith(
          _$MyPassphraseImpl value, $Res Function(_$MyPassphraseImpl) then) =
      __$$MyPassphraseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WordlistEnum wordlist,
      DividerEnum divider,
      int length,
      String passphrase});
}

/// @nodoc
class __$$MyPassphraseImplCopyWithImpl<$Res>
    extends _$MyPassphraseCopyWithImpl<$Res, _$MyPassphraseImpl>
    implements _$$MyPassphraseImplCopyWith<$Res> {
  __$$MyPassphraseImplCopyWithImpl(
      _$MyPassphraseImpl _value, $Res Function(_$MyPassphraseImpl) _then)
      : super(_value, _then);

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
    return _then(_$MyPassphraseImpl(
      wordlist: null == wordlist
          ? _value.wordlist
          : wordlist // ignore: cast_nullable_to_non_nullable
              as WordlistEnum,
      divider: null == divider
          ? _value.divider
          : divider // ignore: cast_nullable_to_non_nullable
              as DividerEnum,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      passphrase: null == passphrase
          ? _value.passphrase
          : passphrase // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MyPassphraseImpl implements _MyPassphrase {
  _$MyPassphraseImpl(
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

  @override
  String toString() {
    return 'MyPassphrase(wordlist: $wordlist, divider: $divider, length: $length, passphrase: $passphrase)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyPassphraseImpl &&
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

  /// Create a copy of MyPassphrase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyPassphraseImplCopyWith<_$MyPassphraseImpl> get copyWith =>
      __$$MyPassphraseImplCopyWithImpl<_$MyPassphraseImpl>(this, _$identity);
}

abstract class _MyPassphrase implements MyPassphrase {
  factory _MyPassphrase(
      {required final WordlistEnum wordlist,
      required final DividerEnum divider,
      required final int length,
      required final String passphrase}) = _$MyPassphraseImpl;

  @override
  WordlistEnum get wordlist;
  @override
  DividerEnum get divider;
  @override
  int get length;
  @override
  String get passphrase;

  /// Create a copy of MyPassphrase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyPassphraseImplCopyWith<_$MyPassphraseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
