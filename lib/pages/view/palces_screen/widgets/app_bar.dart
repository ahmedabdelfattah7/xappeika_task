
import 'package:flutter/material.dart';
import 'package:r_dotted_line_border/r_dotted_line_border.dart';
import 'package:xapprika/constants/app_text.dart';
import 'package:xapprika/constants/asset_svg.dart';
import 'package:xapprika/constants/colors.dart';
import 'package:xapprika/constants/text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AppSVGAssets.getWidget(
          AppSVGAssets.profile,
          fit: BoxFit.fill,
          height: 25,
          width: 25,
        ),
      ),
      title: const Text(
        AppString.guest,
        style: TextStyles.textMedium,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {},
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                border: RDottedLineBorder.all(
                  width: 1,
                ),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.search, color: ColorCode.titleGrey),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}