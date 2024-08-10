import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xapprika/constants/colors.dart';
import 'package:xapprika/pages/controller/controller.dart';

class NextPerButtons extends GetView<AppController> {
  const NextPerButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Obx(() {
            if (controller.currentStepIndex.value > 0) {
              return InkWell(
                onTap: () {
                  controller.previousStep();
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ColorCode.backGroundColorGrey2,
                    shape: BoxShape.rectangle,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                ),
              );
            } else {
              return const SizedBox.shrink();
            }
          }),
          InkWell(
            onTap: () {
              controller.nextStep();
            },
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ColorCode.primary,
                shape: BoxShape.rectangle,
              ),
              child: const Center(
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
