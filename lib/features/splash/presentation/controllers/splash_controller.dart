import 'dart:async';
import 'dart:math';
import 'package:currecny_converter_app/core/routes/routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  late Timer timer;

  /* ----------------------------------- rx ----------------------------------- */
  final RxBool _isLoading = true.obs;
  final RxInt _progress = 0.obs; // 0 to 1000

  /* ----------------------------- getters/setters ---------------------------- */
  /// data loading status
  bool get isLoading => _isLoading.value;

  /// loading progress 0.0 to 1.0
  double get progress => _progress.value / 1000;

  /* -------------------------------- overrides ------------------------------- */
  @override
  void onReady() {
    init();
    super.onReady();
  }

  @override
  void onClose() {
    timer.cancel();
    super.onClose();
  }

  /* --------------------------------- methods -------------------------------- */
  void _startProgress() {
    timer = Timer.periodic(
      const Duration(milliseconds: 5),
      (timer) => _progress.value++,
    );
  }

  void _setProgress(int value) {
    if (_progress.value >= value) return;
    _progress(value);
  }

  Future<void> init() async {
    final r = Random();
    await Future.delayed(const Duration(milliseconds: 700));
    _startProgress();
    await Future.delayed(const Duration(milliseconds: 400));
    _setProgress(200 + r.nextInt(150));
    await Future.delayed(const Duration(milliseconds: 500));
    _setProgress(500 + r.nextInt(300));
    await Future.delayed(const Duration(milliseconds: 500));
    _setProgress(1000);
    await Future.delayed(const Duration(milliseconds: 100));
    Get.offNamed(Routes.home);
  }
}
