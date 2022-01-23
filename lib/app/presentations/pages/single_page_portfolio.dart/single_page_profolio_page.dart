import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/single_page_porfolio/appbar/appbar.dart';
import 'single_page_portfolio_controller.dart';

class SinglePagePortfolioPage extends StatelessWidget {
  SinglePagePortfolioPage({
    Key? key,
  }) : super(key: key);

  static Future<void> show() async {
    await Get.to(() => SinglePagePortfolioPage());
  }

  final PageController pageViewController = PageController();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SinglePagePortfolioPageController>(
      global: false,
      init: SinglePagePortfolioPageController(),
      builder: (controller) {
        return MaterialApp(
          home: Scaffold(
            appBar: PsjPortfolioPageNavbar(),
            body: Stack(
              children: [
                PageView(
                  onPageChanged: (value) {
                    controller.page.value = value;
                  },
                  scrollDirection: Axis.vertical,
                  controller: pageViewController,
                  scrollBehavior: AppScrollBehavior(),
                  children: [
                    Container(
                      color: Colors.amberAccent,
                      child: Center(child: Text('First Page')),
                    ),
                    Container(
                      color: Colors.white,
                      child: Center(child: Text('Second Page')),
                    ),
                    Container(
                      color: Colors.blueAccent,
                      child: Center(child: Text('Third Page')),
                    ),
                  ],
                ),
                Positioned(
                  right: 20,
                  bottom: 0,
                  top: 0,
                  child: Container(
                    alignment: Alignment.center,
                    width: 20,
                    // color: Colors.grey.withOpacity(0.8),
                    child: ListView.builder(
                      itemCount: 3,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) => Obx(
                        () => CupertinoButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {
                            controller.page.value = index;
                          },
                          child: Container(
                            width: 8.0,
                            height: 8.0,
                            margin: const EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 2.0,
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: controller.page.value == index
                                  ? Color(0xff1f1f1f)
                                  : const Color.fromRGBO(0, 0, 0, 0.4),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
