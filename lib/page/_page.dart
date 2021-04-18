import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../bindings/psj_portfolio_page.dart';
import 'psj_portfolio.dart';

final corePages = [
  GetPage(
    name: '/',
    page: () => PsjPortfolioPage(),
    binding: PsjPortfolioPageBinding(),
    curve: Curves.easeOutCubic,
  ),
];
