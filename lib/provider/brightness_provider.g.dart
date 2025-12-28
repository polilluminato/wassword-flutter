// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brightness_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BrightnessNotifier)
const brightnessProvider = BrightnessNotifierProvider._();

final class BrightnessNotifierProvider
    extends $NotifierProvider<BrightnessNotifier, Brightness> {
  const BrightnessNotifierProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'brightnessProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$brightnessNotifierHash();

  @$internal
  @override
  BrightnessNotifier create() => BrightnessNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Brightness value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Brightness>(value),
    );
  }
}

String _$brightnessNotifierHash() =>
    r'cf7a72fa6d5a67f8ecfd7aeba3e72ee5eff8c927';

abstract class _$BrightnessNotifier extends $Notifier<Brightness> {
  Brightness build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Brightness, Brightness>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<Brightness, Brightness>, Brightness, Object?, Object?>;
    element.handleValue(ref, created);
  }
}
