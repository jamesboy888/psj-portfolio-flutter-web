import 'package:flutter/material.dart';

import 'app.dart';
import 'injector.dart';

Future<void> main() async {
  await initializeDependencies();
  runApp(MyApp());
}
