import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../localization/changelocal.dart';
import '../widget/custombuttomlang.dart';

class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/1.gif",
                width: 100.w,
                height: 75.h,
              ),
              Text("chooseLanguage".tr,
                  style: Theme.of(context).textTheme.displayLarge),
              Image.asset(
                "assets/images/1.gif",
                width: 100.w,
                height: 75.h,
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Column(
            children: [
              Image.asset(
                "assets/images/kaaba.webp",
                width: 75.w,
                height: 75.h,
              ),
              CustomButtonLang(
                textbutton: "arbic".tr,
                onPressed: () {
                  controller.changeLang("ar");
                  Get.toNamed('/home');
                },
              ),
            ],
          ),
          const SizedBox(height: 25),
          Column(
            children: [
              Image.asset(
                "assets/images/English.png",
                width: 50.w,
                height: 50.h,
              ),
              CustomButtonLang(
                textbutton: "english".tr,
                onPressed: () {
                  controller.changeLang("en");
                  Get.toNamed('/home');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
