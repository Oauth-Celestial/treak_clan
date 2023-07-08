import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:treak_clan/utils/Theme/app_theme.dart';
import 'package:treak_clan/utils/Theme/theme_manager.dart';
import 'package:treak_clan/utils/app_spacer.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              AppSpacer.addVerticalSpace(of: 15),
              Container(
                padding: const EdgeInsets.only(left: 20),
                width: double.infinity,
                alignment: Alignment.centerLeft,
                height: 50,
                child: const Text(
                  "Settings",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 25),
                ),
              ),
              AppSpacer.addVerticalSpace(of: 15),
              ListTile(
                leading: const Icon(Icons.sunny),
                title: const Text("Theme Mode"),
                trailing:
                    Consumer<ThemeManager>(builder: (context, manager, _) {
                  return Switch(
                      value: manager.appTheme == ThemeMode.dark,
                      onChanged: (value) {
                        manager.setAppTheme(manager.appTheme == ThemeMode.dark
                            ? AppThemeType.Light
                            : AppThemeType.Dark);
                      });
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
