import 'package:bgc/app/const/color.dart';
import 'package:bgc/app/const/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: AppColors.blue,
    statusBarColor: AppColors.blue,
  ));
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: LightTheme.lightTheme,
      title: "BGC APP",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
