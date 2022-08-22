import 'package:get/get.dart';
import './form_controller.dart';

class FormBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(FormController());
    }
}