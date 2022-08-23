import 'package:get/get.dart';
import './arcanos_controller.dart';

class ArcanosBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ArcanosController());
  }
}
