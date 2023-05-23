import 'package:bgc/app/const/color.dart';
import 'package:bgc/app/const/space.dart';
import 'package:bgc/app/global_widgets/boutons.dart';
import 'package:bgc/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/forget_password_controller.dart';

class ForgetPasswordView extends GetView<ForgetPasswordController> {
  const ForgetPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const CustomBackButton(color: AppColors.white),
        // title: const Text(
        //   'Verification du Code',
        //   style: TextStyle(
        //     color: AppColors.whiteWithOpacity,
        //     fontWeight: FontWeight.w300,
        //     fontSize: 14,
        //   ),
        // ),
        // centerTitle: true,
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
                  const Text(
                    "Mot de passe oublié",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: AppSpace.spacebetweenWidgets,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Entrez votre numéro enregistré pour récupérer votre mot de passe",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.w200),
                    ),
                  )
                ],
              ),
              Form(
                child: Column(
                  children: [
                    Obx(
                      () => TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: controller.visible.value,
                        style: const TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.w200),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.lightBlue,
                          hintText: 'Mot de passe',
                          hintStyle: const TextStyle(
                            color: AppColors.whiteWithOpacity,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              controller.visible(!controller.visible.value);
                            },
                            icon: Icon(
                              controller.visible.value
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: AppSpace.spacebetweenWidgets,
                    ),
                    Obx(
                      () => TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: controller.visible.value,
                        style: const TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.w200),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.lightBlue,
                          hintText: 'Mot de passe',
                          hintStyle: const TextStyle(
                            color: AppColors.whiteWithOpacity,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              controller.visible(!controller.visible.value);
                            },
                            icon: Icon(
                              controller.visible.value
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              AppButton(
                text: "Récupérer",
                textColor: AppColors.white,
                backgroundColor: AppColors.black,
                onPressed: () {
                  Get.toNamed(Routes.HOME);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
