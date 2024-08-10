import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:xapprika/pages/controller/controller.dart';

class QuestionTypeImage extends GetView<AppController> {
  const QuestionTypeImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
          () {
        var currentQuestion = controller.questions.isNotEmpty
            ? controller.questions[controller.currentStepIndex.value]
            : null;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (currentQuestion != null) ...[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SvgPicture.network(
                    currentQuestion.steps[0].iconPath,
                    placeholderBuilder: (context) =>
                    const CircularProgressIndicator(),
                    height: 100,
                  ),
                ),
                // Question List
              ],
              // Add other children here if needed
            ],
          ),
        );
      },
    );
  }
}