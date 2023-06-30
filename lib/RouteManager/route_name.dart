import 'package:flutter/material.dart';
import 'package:treak_clan/view/HomePage/home_page.dart';
import 'package:treak_clan/view/SplashScreen/splash_screen.dart';

class RouteManager {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    String routeName = settings.name ?? "";

    switch (routeName) {
      case "/":
        return MaterialPageRoute(
            settings: settings, builder: ((context) => SplashScreen()));
      case "home-page":
        return MaterialPageRoute(
            settings: settings, builder: ((context) => HomePage()));
      default:
        return MaterialPageRoute(
            settings: settings,
            builder: ((context) => Container(
                  alignment: Alignment.center,
                  child: Text("Invalid Route"),
                )));
    }
  }
}
