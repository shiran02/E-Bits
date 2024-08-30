import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'presentation/splash_view/splash_view.dart';

/// -- user this class to setup themes, initial bindings , any animations and mush
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home: SplashView(),
    );
  }
}
