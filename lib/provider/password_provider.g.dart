// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Password)
const passwordProvider = PasswordProvider._();

final class PasswordProvider extends $NotifierProvider<Password, MyPassword> {
  const PasswordProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'passwordProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$passwordHash();

  @$internal
  @override
  Password create() => Password();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MyPassword value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MyPassword>(value),
    );
  }
}

String _$passwordHash() => r'3857eb64ab716d21bd75169c02a288300245113b';

abstract class _$Password extends $Notifier<MyPassword> {
  MyPassword build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<MyPassword, MyPassword>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<MyPassword, MyPassword>, MyPassword, Object?, Object?>;
    element.handleValue(ref, created);
  }
}
