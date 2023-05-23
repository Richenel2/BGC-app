import 'package:bgc/app/const/images.dart';
import 'package:bgc/app/const/space.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../const/color.dart';
import '../../../global_widgets/boutons.dart';
import '../../../routes/app_pages.dart';
import '../controllers/new_account_controller.dart';

class NewAccountView extends GetView<NewAccountController> {
  const NewAccountView({Key? key}) : super(key: key);
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
                    "Créez un compte",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            style: const TextStyle(
                                color: AppColors.white,
                                fontWeight: FontWeight.w200),
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: AppColors.lightBlue,
                              hintText: 'Pseudo',
                              hintStyle: TextStyle(
                                color: AppColors.whiteWithOpacity,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: AppSpace.spacebetweenWidgets,
                        ),
                        Flexible(
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            style: const TextStyle(
                                color: AppColors.white,
                                fontWeight: FontWeight.w200),
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: AppColors.lightBlue,
                              hintText: 'N. de téléphone',
                              hintStyle: TextStyle(
                                color: AppColors.whiteWithOpacity,
                              ),
                            ),
                          ),
                        ),
                      ],
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
              Column(
                children: [
                  AppButton(
                    text: "S’inscrire",
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
                        const Text("Avez-vous déjà un compte ?"),
                        TextButton(
                          onPressed: () {
                            Get.toNamed(Routes.LOGIN);
                          },
                          child: const Text(
                            "Se connecter",
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
