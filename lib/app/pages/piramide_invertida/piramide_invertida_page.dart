import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './piramide_invertida_controller.dart';

class PiramideInvertidaPage extends GetView<PiramideInvertidaController> {
  const PiramideInvertidaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PiramideInvertidaPage'),
      ),
      body: Container(),
    );
  }
}
