import 'package:get/get.dart';
import 'package:numerio/app/pages/arcanos/arcanos_bindings.dart';
import 'package:numerio/app/pages/arcanos/arcanos_page.dart';
import 'package:numerio/app/pages/form/form_bindings.dart';
import 'package:numerio/app/pages/form/form_page.dart';
import 'package:numerio/app/pages/home/home_bindings.dart';
import 'package:numerio/app/pages/home/home_page.dart';
import 'package:numerio/app/pages/numerologia_cabalistica/numerologia_cabalistica_bindings.dart';
import 'package:numerio/app/pages/numerologia_cabalistica/numerologia_cabalistica_page.dart';
import 'package:numerio/app/pages/piramide_invertida/piramide_invertida_bindings.dart';
import 'package:numerio/app/pages/piramide_invertida/piramide_invertida_page.dart';

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
    GetPage(
      name: '/numerologia_cabalistica',
      binding: NumerologiaCabalisticaBindings(),
      page: () => const NumerologiaCabalisticaPage(),
      transition: Transition.fade,
      transitionDuration: const Duration(seconds: 1),
    ),
    GetPage(
      name: '/piramide_invertida',
      binding: PiramideInvertidaBindings(),
      page: () => const PiramideInvertidaPage(),
      transition: Transition.fade,
      transitionDuration: const Duration(seconds: 1),
    ),
    GetPage(
      name: '/arcanos',
      binding: ArcanosBindings(),
      page: () => const ArcanosPage(),
      transition: Transition.fade,
      transitionDuration: const Duration(seconds: 1),
    ),
  ];
}
