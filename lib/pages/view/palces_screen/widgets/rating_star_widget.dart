import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RaringStars extends StatelessWidget {
  const RaringStars({
    super.key,
    required this.isIgnoreGestures,
    this.itemSize,
    required this.starColor,
    required this.onRatingUpdate,
  });
  final bool isIgnoreGestures;
  final double? itemSize;
  final ValueChanged<double> onRatingUpdate;
  final Color starColor ;
  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: 5,
      minRating: 1,
      ignoreGestures: isIgnoreGestures,
      direction: Axis.horizontal,
      allowHalfRating: false,
      itemCount: 3,
      itemSize: itemSize ?? 25,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) =>  Icon(
        Icons.star,
        color: starColor,
      ),
      onRatingUpdate: onRatingUpdate,
    );
  }
}