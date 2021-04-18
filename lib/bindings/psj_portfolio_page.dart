import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';

import '../controllers/psj_portfolio_page.dart';

class PsjPortfolioPageBinding implements Bindings {
  @override
  void dependencies() async {
    ///
    ///
    /// === [APP CONTROLLERS & UTILITIES] ===
    ///
    ///

    Get.put(PsjPortfolioPageController(), permanent: true);

    ///
    ///
    /// === [SERVICES] ===
    ///
    ///

    ///
    ///
    /// === [CORE CONTROLLERS] ===
    ///
    ///

    ///
    ///
    /// === [LANDING PAGE CONTROLLERS] ===
    ///
    ///
  }
}
