class SplashViewModel {
  static const Duration tempoDaSplash = Duration(seconds: 2);

  Future<void> aguardarTempoDaSplash() async {
    await Future<void>.delayed(tempoDaSplash);
  }
}
