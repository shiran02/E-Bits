import 'package:flutter/material.dart';
import 'package:fluttertask/presentation/home_view/home_view.dart';
import 'package:fluttertask/presentation/resources/string_manager.dart';
import 'package:fluttertask/presentation/splash_view/splash_view.dart';

class Routes {
  static const String splashRoute = "/";
  static const String homeRoute = "/home";
  static const String productDetailsRoute = "/productDetail";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => SplashView());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => HomeView());
      // case Routes.homeRoute:
      //   return MaterialPageRoute(builder: (_) => ProductView());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings.noRouteFound),
              ),
              body: const Center(
                child: Text(AppStrings.noRouteFound),
              ),
            ));
  }
}
