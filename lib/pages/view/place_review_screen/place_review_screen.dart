import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:r_dotted_line_border/r_dotted_line_border.dart';
import 'package:xapprika/pages/controller/controller.dart';
import 'package:xapprika/pages/model/model.dart';
import 'package:xapprika/pages/view/new_palace_screen/widgets/app_bar_widget.dart';
import 'package:xapprika/pages/view/place_review_screen/widgets/next_per_btns.dart';
import 'package:xapprika/pages/view/place_review_screen/widgets/progress_bar_widget.dart';
import 'package:xapprika/pages/view/place_review_screen/widgets/question_list_widget.dart';
import 'package:xapprika/pages/view/place_review_screen/widgets/question_type_image.dart';

import '../../../constants/app_text.dart';
import '../../../constants/colors.dart';
import '../../../constants/text_styles.dart';

class PlaceReviewScreen extends GetView<AppController> {
  const PlaceReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Scaffold(
        backgroundColor: ColorCode.background,
        appBar:CustomAppBar(title: AppString.addReview,),
        body: Column(
          children: [
            ProgressBarWidget(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  QuestionTypeImage(),
                  QuestionsList(),
                  NextPerButtons()
                ],
              ),
            ),
          ],
        ));
  }
}

