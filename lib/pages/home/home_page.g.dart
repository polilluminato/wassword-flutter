// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Tab)
const tabProvider = TabProvider._();

final class TabProvider extends $NotifierProvider<Tab, int> {
  const TabProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'tabProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$tabHash();

  @$internal
  @override
  Tab create() => Tab();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$tabHash() => r'76c0e66eaa1b7473576a9fccb09d3ca9f09cdebc';

abstract class _$Tab extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<int, int>;
    final element = ref.element
        as $ClassProviderElement<AnyNotifier<int, int>, int, Object?, Object?>;
    element.handleValue(ref, created);
  }
}
