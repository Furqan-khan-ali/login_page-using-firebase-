import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:stack_rev/base/app_setup.locator.dart';
import 'package:stack_rev/firebase_options.dart';
import 'package:stack_rev/views/splash/splash_view.dart';
import 'package:stacked_services/stacked_services.dart';

import 'base/app_setup.router.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: StackedService.navigatorKey,
      // Construct the StackedRouter and set the onGenerateRoute function
      onGenerateRoute: StackedRouter().onGenerateRoute,
      home: SplashView(),
    );
  }


}
