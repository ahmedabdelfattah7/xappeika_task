import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:r_dotted_line_border/r_dotted_line_border.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: InkWell(
        onTap: () {
          Get.back();
        },
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              border: RDottedLineBorder.all(
                width: 1,
              ),
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.arrow_back, color: ColorCode.titleGrey),
          ),
        ),
      ),
      title: Text(
        title,
        style: TextStyles.textMedium,
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
