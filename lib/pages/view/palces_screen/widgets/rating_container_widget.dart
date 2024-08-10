import 'package:flutter/material.dart';

import 'package:xapprika/constants/asset_svg.dart';
import 'package:xapprika/constants/colors.dart';
import 'package:xapprika/constants/text_styles.dart';
import 'package:xapprika/pages/view/palces_screen/widgets/rating_star_widget.dart';


class RatingContainer extends StatelessWidget {
  const RatingContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Image.network(
                        'https://images.pexels.com/photos/1294943/pexels-photo-1294943.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Bosphorus',
                      style: TextStyles.textMedium
                          .copyWith(fontWeight: FontWeight.w200),
                    ),
                  ],
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: ColorCode.backGroundColorGrey2,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.more_vert,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    AppSVGAssets.getWidget(AppSVGAssets.parking),
                    const SizedBox(width: 15,),
                    RaringStars(
                      starColor: ColorCode.primary,
                      isIgnoreGestures: false,
                      onRatingUpdate: (rating) {},
                    ),
                  ],
                ),

                Row(
                  children: [
                    AppSVGAssets.getWidget(AppSVGAssets.pavements),
                    const SizedBox(width: 15,),
                    RaringStars(
                      isIgnoreGestures: false,
                      onRatingUpdate: (rating) {}, starColor: ColorCode.secsandry,
                    ),
                  ],
                ),

              ],
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    AppSVGAssets.getWidget(AppSVGAssets.doors),
                    const SizedBox(width: 15,),
                    RaringStars(
                      starColor: Colors.amber,
                      isIgnoreGestures: false,
                      onRatingUpdate: (rating) {},
                    ),
                  ],
                ),

                Row(
                  children: [
                    AppSVGAssets.getWidget(AppSVGAssets.tiolet),
                    const SizedBox(width: 15,),
                    RaringStars(
                      isIgnoreGestures: false,
                      onRatingUpdate: (rating) {}, starColor: ColorCode.secsandry,
                    ),
                  ],
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}