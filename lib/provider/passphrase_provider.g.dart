// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passphrase_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Passphrase)
const passphraseProvider = PassphraseProvider._();

final class PassphraseProvider
    extends $NotifierProvider<Passphrase, MyPassphrase> {
  const PassphraseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'passphraseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$passphraseHash();

  @$internal
  @override
  Passphrase create() => Passphrase();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MyPassphrase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MyPassphrase>(value),
    );
  }
}

String _$passphraseHash() => r'0e9681f0d701a71a71923e175368395fb846c534';

abstract class _$Passphrase extends $Notifier<MyPassphrase> {
  MyPassphrase build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<MyPassphrase, MyPassphrase>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<MyPassphrase, MyPassphrase>,
        MyPassphrase,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
