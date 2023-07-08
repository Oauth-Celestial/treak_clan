import 'package:flutter/material.dart';
import 'package:treak_clan/view/HomeDashboard/home_dashboard.dart';
import 'package:treak_clan/view/SplashScreen/splash_screen.dart';

class RouteManager {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    String routeName = settings.name ?? "";

    switch (routeName) {
      case "/":
        return MaterialPageRoute(
            settings: settings, builder: ((context) => const SplashScreen()));
      case "home-page":
        return MaterialPageRoute(
            settings: settings, builder: ((context) => const HomeDashBoard()));
      default:
        return MaterialPageRoute(
            settings: settings,
            builder: ((context) => Container(
                  alignment: Alignment.center,
                  child: const Text("Invalid Route"),
                )));
    }
  }
}
