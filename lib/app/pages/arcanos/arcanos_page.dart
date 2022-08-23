import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './arcanos_controller.dart';

class ArcanosPage extends GetView<ArcanosController> {
  const ArcanosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ArcanosPage'),
      ),
      body: Container(),
    );
  }
}
