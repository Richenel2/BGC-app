import 'package:bgc/app/const/color.dart';
import 'package:bgc/app/const/images.dart';
import 'package:bgc/app/const/space.dart';
import 'package:bgc/app/global_widgets/boutons.dart';
import 'package:bgc/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: DefaultTextStyle(
        style: const TextStyle(color: AppColors.white),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppImages.startIllustration,
                    width: MediaQuery.of(context).size.width * 2 / 3,
                  ),
                ],
              ),
              Column(
                children: [
                  const Text(
                    'Bienvenu sur BGC-APPS',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: AppSpace.spacebetweenWidgets,
                  ),
                  const Text(
                    'Choisisez votre profil et allons-y',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: AppSpace.spacebetweenWidgets,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AppButton(
                        text: "CLIENT",
                        textColor: AppColors.blue,
                        backgroundColor: AppColors.white,
                        onPressed: () {
                          Get.toNamed(Routes.WELCOME);
                        },
                      ),
                      AppButton(
                        text: "TECHNICIEN",
                        textColor: AppColors.white,
                        backgroundColor: AppColors.black,
                        onPressed: () {
                          Get.toNamed(Routes.WELCOME);
                        },
                      ),
                    ],
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
