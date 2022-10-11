import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numerio/app/app_routes.dart';
import 'package:numerio/app/core/ui/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        ...AppRouters.routers,
      ],
    );
  }
}
