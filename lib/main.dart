import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:treak_clan/RouteManager/route_name.dart';
import 'package:treak_clan/utils/Theme/app_theme.dart';
import 'package:treak_clan/utils/Theme/theme_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => ThemeManager())],
      child: Builder(builder: (context) {
        final ThemeManager themeManager = Provider.of<ThemeManager>(context);
        return MaterialApp(
          title: 'Flutter Demo',
          theme: AppTheme.appLightTheme,
          darkTheme: AppTheme.appDarkTheme,
          themeMode: themeManager.appTheme,
          initialRoute: "/",
          onGenerateRoute: RouteManager.generateRoute,
        );
      }),
    );
  }
}

// https://dribbble.com/shots/18874273-Travel-App
