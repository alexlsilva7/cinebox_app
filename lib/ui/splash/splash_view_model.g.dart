// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider para o SplashViewModel

@ProviderFor(splashViewModel)
const splashViewModelProvider = SplashViewModelProvider._();

/// Provider para o SplashViewModel

final class SplashViewModelProvider
    extends
        $FunctionalProvider<SplashViewModel, SplashViewModel, SplashViewModel>
    with $Provider<SplashViewModel> {
  /// Provider para o SplashViewModel
  const SplashViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'splashViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$splashViewModelHash();

  @$internal
  @override
  $ProviderElement<SplashViewModel> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SplashViewModel create(Ref ref) {
    return splashViewModel(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SplashViewModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SplashViewModel>(value),
    );
  }
}

String _$splashViewModelHash() => r'c5547aa3c21f89ae5ff3bf13e8f4cec5d7a8726c';
