import 'package:get/get.dart';

import '../controllers/verfication_code_controller.dart';

class VerficationCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerficationCodeController>(
      () => VerficationCodeController(),
    );
  }
}
