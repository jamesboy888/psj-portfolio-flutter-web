import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'bindings/psj_portfolio_page.dart';
import 'page/_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///
    ///
    /// RENDER
    ///
    ///
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      initialBinding: PsjPortfolioPageBinding(),
      transitionDuration: Duration(milliseconds: 300),
      customTransition: AppTransition(),
      builder: (context, widget) => ScrollConfiguration(
        behavior: ScrollBehaviorModified(),
        child: widget ?? Container(),
      ),
      getPages: [
        ...corePages,
      ],
    );
  }
}

///
///
/// === [APP SCROLL BEHAVIOR] ===
///
///
class ScrollBehaviorModified extends ScrollBehavior {
  const ScrollBehaviorModified();
  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    switch (getPlatform(context)) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
      case TargetPlatform.android:
        return const BouncingScrollPhysics();
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return const ClampingScrollPhysics();
      default:
        return const BouncingScrollPhysics();
    }
  }
}

///
///
/// === [APP TRANSITION] ===
///
///
class AppTransition implements CustomTransition {
  @override
  Widget buildTransition(
    BuildContext context,
    Curve curve,
    Alignment alignment,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    final _slideInAnimation = CurvedAnimation(
      parent: animation,
      curve: Curves.easeOutCubic,
      reverseCurve: Curves.ease,
    );

    return FadeTransition(
      opacity: animation,
      child: Container(
        child: SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1.0, 0.0),
            end: Offset.zero,
          ).animate(_slideInAnimation),
          child: child,
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
