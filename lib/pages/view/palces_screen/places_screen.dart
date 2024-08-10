import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xapprika/constants/colors.dart';
import 'package:xapprika/pages/controller/controller.dart';
import 'package:xapprika/pages/view/palces_screen/widgets/app_bar.dart';
import 'package:xapprika/pages/view/palces_screen/widgets/rating_container_widget.dart';
import 'package:xapprika/routes/app_routes.dart';

class PlacesScreen extends GetView<AppController> {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorCode.background,
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) => const RatingContainer(),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 20,
                      ),
                  itemCount: 10),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: () {
         Get.toNamed(Routes.NEW_PLACE);
        },
        backgroundColor: ColorCode.primary,
        child: const Icon(Icons.add,color: Colors.white,),
      ),
    );
  }
}
