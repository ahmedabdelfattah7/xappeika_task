import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:r_dotted_line_border/r_dotted_line_border.dart';
import 'package:xapprika/constants/app_text.dart';
import 'package:xapprika/constants/text_styles.dart';
import 'package:xapprika/pages/controller/controller.dart';
import 'package:xapprika/pages/view/new_palace_screen/widgets/app_bar_widget.dart';
import 'package:xapprika/routes/app_routes.dart';

import '../../../constants/colors.dart';
import 'widgets/custom_text_form_field.dart';

class NewPlaceScreen extends GetView<AppController> {
  const NewPlaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorCode.background,
      appBar: const CustomAppBar(
        title: AppString.addNewPlace,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppString.placeInfo,
                  style: TextStyles.textMedium.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  AppString.placeName,
                  style: TextStyles.textMedium.copyWith(
                    fontWeight: FontWeight.w300,
                    color: ColorCode.titleGrey,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFormField(
                  filledColor: ColorCode.backGroundColorGrey2,
                  hint: '',
                  inputType: TextInputType.text,
                  label: '',
                  onSave: (String? e) {},
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  AppString.logoOrImage,
                  style: TextStyles.textMedium.copyWith(
                    fontWeight: FontWeight.w300,
                    color: ColorCode.titleGrey,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFormField(
                  filledColor: ColorCode.backGroundColorGrey2,
                  hint: '',
                  inputType: TextInputType.text,
                  label: '',
                  onSave: (String? e) {},
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.PLACE_REVIEW);
              },
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ColorCode.primary,
                ),
                child: Center(
                  child: Text(
                    AppString.next,
                    style: TextStyles.textMedium.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
