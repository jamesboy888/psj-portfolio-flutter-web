import 'package:get/get.dart';

import '../presentations/pages/single_page_portfolio.dart/single_page_profolio_page.dart';
import 'routes.dart';

class Pages {
  List<GetPage> all() => <GetPage>[
        GetPage(
          name: Routes.home,
          page: () => SinglePagePortfolioPage(),
        ),
      ];
}
