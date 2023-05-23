import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/verfication_code_controller.dart';

class VerficationCodeView extends GetView<VerficationCodeController> {
  const VerficationCodeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VerficationCodeView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'VerficationCodeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
