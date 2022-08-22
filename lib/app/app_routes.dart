import 'package:get/get.dart';
import 'package:numerio/app/form/form_bindings.dart';
import 'package:numerio/app/form/form_page.dart';
import 'package:numerio/app/home/home_bindings.dart';
import 'package:numerio/app/home/home_page.dart';
import 'package:numerio/app/splash/splash_bindings.dart';
import 'package:numerio/app/splash/splash_page.dart';

class AppRouters {
  AppRouters._();
  static final routers = <GetPage>[
    GetPage(
      name: '/',
      binding: HomeBindings(),
      page: () => const HomePage(),
      transition: Transition.fade,
    ),
    GetPage(
      name: '/form',
      binding: FormBindings(),
      page: () => FormPage(),
      transition: Transition.fade,
      transitionDuration: const Duration(seconds: 2),
    ),
    GetPage(
      name: '/home',
      binding: HomeBindings(),
      page: () => const HomePage(),
      transition: Transition.fade,
      transitionDuration: const Duration(seconds: 1),
    ),
  ];
}
