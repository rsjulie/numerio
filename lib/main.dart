import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numerio/app/app_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        ...AppRouters.routers,
      ],
    );
  }
}
