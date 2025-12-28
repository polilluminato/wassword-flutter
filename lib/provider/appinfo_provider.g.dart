// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appinfo_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(packageInfo)
const packageInfoProvider = PackageInfoProvider._();

final class PackageInfoProvider extends $FunctionalProvider<
        AsyncValue<PackageInfo>, PackageInfo, FutureOr<PackageInfo>>
    with $FutureModifier<PackageInfo>, $FutureProvider<PackageInfo> {
  const PackageInfoProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'packageInfoProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$packageInfoHash();

  @$internal
  @override
  $FutureProviderElement<PackageInfo> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<PackageInfo> create(Ref ref) {
    return packageInfo(ref);
  }
}

String _$packageInfoHash() => r'e85c18fc1df698cf58e72da2ff3d20b5e68db434';
