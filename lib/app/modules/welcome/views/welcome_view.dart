import 'package:bgc/app/const/color.dart';
import 'package:bgc/app/const/images.dart';
import 'package:bgc/app/const/space.dart';
import 'package:bgc/app/global_widgets/boutons.dart';
import 'package:bgc/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.imageBg),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: AppColors.grayWithOpacity,
          ),
          padding: EdgeInsets.symmetric(
            vertical: 40,
            horizontal: AppSpace.screenPadding,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomBackButton(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AppButton(
                    text: "S’inscrire",
                    textColor: AppColors.blue,
                    backgroundColor: AppColors.white,
                    onPressed: () {
                      Get.toNamed(Routes.WELCOME);
                    },
                  ),
                  AppButton(
                    text: "Se connecter",
                    textColor: AppColors.white,
                    backgroundColor: AppColors.blue,
                    onPressed: () {
                      Get.toNamed(Routes.WELCOME);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
