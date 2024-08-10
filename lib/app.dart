import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:xapprika/constants/colors.dart';
import 'package:xapprika/routes/app_pages.dart';

class XAppRika extends StatelessWidget {
  const XAppRika({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(430, 923),
    minTextAdapt: true,
    splitScreenMode: true,useInheritedMediaQuery :true,
    builder: (BuildContext context, child) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TASK',
        theme: ThemeData(
          fontFamily: 'Poppins',
          useMaterial3: true,
        ),
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
      );
    }
    );
  }
}