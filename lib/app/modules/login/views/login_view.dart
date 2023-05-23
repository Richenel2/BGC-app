import 'package:bgc/app/const/color.dart';
import 'package:bgc/app/const/images.dart';
import 'package:bgc/app/const/space.dart';
import 'package:bgc/app/global_widgets/boutons.dart';
import 'package:bgc/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const CustomBackButton(color: AppColors.white),
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
                  Image.asset(
                    AppImages.logo,
                    width: 100,
                  ),
                  SizedBox(
                    height: AppSpace.spacebetweenWidgets,
                  ),
                  const Text(
                    "Se connecter à Votre compte",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.number,
                      style: const TextStyle(
                          color: AppColors.white, fontWeight: FontWeight.w200),
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: AppColors.lightBlue,
                        hintText: 'N. de téléphone',
                        hintStyle: TextStyle(
                          color: AppColors.whiteWithOpacity,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Get.toNamed(Routes.FORGET_PASSWORD);
                          },
                          child: const Text(
                            "Mot de passe oublié",
                            style: TextStyle(
                                fontSize: 12,
                                color: AppColors.whiteWithOpacity,
                                fontWeight: FontWeight.w200),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  AppButton(
                    text: "Se connecter",
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Vous n’avez pas de compte ?"),
                        TextButton(
                          onPressed: () {
                            Get.toNamed(Routes.NEW_ACCOUNT);
                          },
                          child: const Text(
                            "S’inscrire",
                            style: TextStyle(color: AppColors.white),
                          ),
                        )
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
