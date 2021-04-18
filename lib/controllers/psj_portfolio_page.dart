import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';

enum PsjPortfolioResult {
  NONE,
}

class PsjPortfolioPageController extends GetxController {
  ///
  ///
  /// === [UTILITIES] ===
  ///
  ///

  ///
  ///
  /// === [CONTROLLERS] ===
  ///
  ///

  ///
  ///
  /// === [SERVICES] ===
  ///
  ///

  ///
  ///
  /// === [WORKERS] ===
  ///
  ///

  ///
  ///
  /// === [INIT] ===
  ///
  ///
  void onInit() {
    super.onInit();
  }

  ///
  ///
  /// === [CLOSE] ===
  ///
  ///
  @override
  void onClose() async {
    super.onClose();
  }

  ///
  ///
  /// === [PARAMETERS & ARGUMENTS] ===
  ///
  ///

  ///
  ///
  /// === [PAGE RESULT] ===
  ///
  ///
  final pageResult = PsjPortfolioResult.NONE.obs;

  void handleGoBack() {
    Get.back(result: pageResult);
  }
}
