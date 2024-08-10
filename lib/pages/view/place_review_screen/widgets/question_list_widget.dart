import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:xapprika/constants/colors.dart';
import 'package:xapprika/pages/controller/controller.dart';

class QuestionsList extends GetView<AppController> {
  const QuestionsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      var currentQuestion =
          controller.questions[controller.currentStepIndex.value];
      return SizedBox(
        height: 500.h,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: currentQuestion.steps.length,
          itemBuilder: (context, stepIndex) {
            var step = currentQuestion.steps[stepIndex];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  step.stepTitle,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                ...step.responses.asMap().entries.map((entry) {
                  int responseIndex = entry.key;
                  var response = entry.value;
                  return Obx(
                    () => Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: response.isSelected.value
                              ? ColorCode.primary
                              : Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(response.responseTitle),
                          ),
                          GestureDetector(
                            onTap: () {
                              controller.selectResponse(
                                  stepIndex, responseIndex);
                            },
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                color: response.isSelected.value
                                    ? ColorCode.primary.withOpacity(0.2)
                                    : Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: response.isSelected.value
                                  ? const Icon(
                                      Icons.check,
                                      color: ColorCode.primary,
                                      size: 16,
                                    )
                                  : null,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ],
            );
          },
        ),
      );
    });
  }
}
