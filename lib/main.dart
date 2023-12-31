import 'package:flutter/material.dart';
import 'package:treak_clan/RouteManager/route_name.dart';
import 'package:treak_clan/view/SplashScreen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/",
      onGenerateRoute: RouteManager.generateRoute,
    );
  }
}

// https://dribbble.com/shots/18874273-Travel-App
