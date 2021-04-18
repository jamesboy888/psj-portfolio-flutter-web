import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';

import '../controllers/psj_portfolio_page.dart';
import '../widgets/navbar.dart';

class PsjPortfolioPage extends StatelessWidget {
  ///
  ///
  /// === [GLOBAL CONTROLLERS] ===
  ///
  ///
  final _controller = Get.find<PsjPortfolioPageController>();

  ///
  ///
  /// === [BUILD] ===
  ///
  ///
  @override
  Widget build(BuildContext context) {
    ///
    ///
    /// === [RENDER] ===
    ///
    ///
    return Scaffold(
      appBar: PsjPortfolioPageNavbar(),
      body: Container(),
    );
  }

  ///
  ///
  /// === [COMPONENTS] ===
  ///
  ///
}
