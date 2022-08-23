import 'package:get/get.dart';
import './numerologia_cabalistica_controller.dart';

class NumerologiaCabalisticaBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(NumerologiaCabalisticaController());
  }
}
