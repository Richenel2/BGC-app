import 'package:bgc/app/const/color.dart';
import 'package:bgc/app/const/space.dart';
import 'package:bgc/app/global_widgets/boutons.dart';
import 'package:bgc/app/global_widgets/pin_code.dart';
import 'package:bgc/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/verfication_code_controller.dart';

class VerficationCodeView extends GetView<VerficationCodeController> {
  const VerficationCodeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const CustomBackButton(color: AppColors.white),
        title: const Text(
          'Verification du Code',
          style: TextStyle(
            color: AppColors.whiteWithOpacity,
            fontWeight: FontWeight.w300,
            fontSize: 14,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSpace.screenPadding),
        child: DefaultTextStyle(
          style: const TextStyle(color: AppColors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Nous vous avons envoyé un SMS avec un code au numéro ",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ),
                  SizedBox(
                    height: AppSpace.spacebetweenWidgets,
                  ),
                  const Text(
                    "+237 656 030 368",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              PinCode(
                number: 4,
                textColor: AppColors.black,
                bgColor: AppColors.lightBlue,
                fillColor: AppColors.white,
                onCompleted: (value) {
                  controller.passcode(value);
                },
              ),
              Column(
                children: [
                  AppButton(
                    text: "Verifier",
                    textColor: AppColors.white,
                    backgroundColor: AppColors.black,
                    onPressed: () {
                      Get.toNamed(Routes.HOME);
                    },
                  ),
                  SizedBox(
                    height: AppSpace.spacebetweenWidgets,
                  ),
                  DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w200,
                      color: AppColors.whiteWithOpacity,
                    ),
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: () {
                            Get.toNamed(Routes.NEW_ACCOUNT);
                          },
                          child: const Text(
                            "Renvoyer un nouveau code",
                            style: TextStyle(color: AppColors.white),
                          ),
                        ),
                        const Text("Disponible en 30 secondes"),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
