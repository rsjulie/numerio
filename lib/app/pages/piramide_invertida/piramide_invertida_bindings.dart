import 'package:get/get.dart';
import './piramide_invertida_controller.dart';

class PiramideInvertidaBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(PiramideInvertidaController());
  }
}
