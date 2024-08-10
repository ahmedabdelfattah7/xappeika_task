import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xapprika/pages/controller/controller.dart';


class ProgressBarWidget extends GetView<AppController> {
  const ProgressBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
          () {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(controller.questions.length, (index) {
              return Expanded(
                child: Container(
                  height: 10,
                  color: index <= controller.currentStepIndex.value
                      ? Colors.orange
                      : Colors.grey[300],
                  alignment: Alignment.center,
                ),
              );
            }),
          ),
        );
      },
    );
  }
}