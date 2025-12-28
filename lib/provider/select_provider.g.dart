// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DividerSelect)
const dividerSelectProvider = DividerSelectProvider._();

final class DividerSelectProvider
    extends $NotifierProvider<DividerSelect, DividerEnum> {
  const DividerSelectProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'dividerSelectProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$dividerSelectHash();

  @$internal
  @override
  DividerSelect create() => DividerSelect();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DividerEnum value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DividerEnum>(value),
    );
  }
}

String _$dividerSelectHash() => r'13a42bad38e2f04af642dba37a0f6913bd4f7b75';

abstract class _$DividerSelect extends $Notifier<DividerEnum> {
  DividerEnum build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<DividerEnum, DividerEnum>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<DividerEnum, DividerEnum>, DividerEnum, Object?, Object?>;
    element.handleValue(ref, created);
  }
}

@ProviderFor(WordlistSelect)
const wordlistSelectProvider = WordlistSelectProvider._();

final class WordlistSelectProvider
    extends $NotifierProvider<WordlistSelect, WordlistEnum> {
  const WordlistSelectProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'wordlistSelectProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$wordlistSelectHash();

  @$internal
  @override
  WordlistSelect create() => WordlistSelect();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(WordlistEnum value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<WordlistEnum>(value),
    );
  }
}

String _$wordlistSelectHash() => r'e65a5661cb02f18ac9767754ab4662f3131a5c82';

abstract class _$WordlistSelect extends $Notifier<WordlistEnum> {
  WordlistEnum build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<WordlistEnum, WordlistEnum>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<WordlistEnum, WordlistEnum>,
        WordlistEnum,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
