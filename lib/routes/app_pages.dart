

import 'package:get/get.dart';
import 'package:xapprika/pages/bindings/bindings.dart';
import 'package:xapprika/pages/view/new_palace_screen/new_place_screen.dart';
import 'package:xapprika/pages/view/palces_screen/places_screen.dart';
import 'package:xapprika/pages/view/place_review_screen/place_review_screen.dart';

import 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.INITIAL;

  static final routes = [
    GetPage(
      name: Routes.INITIAL,
      page: () => PlacesScreen(),
      binding: AppBindings(),
    ),
    GetPage(
      name: Routes.PLACES,
      page: () => PlacesScreen(),
      binding: AppBindings(),
    ),
    GetPage(
      name: Routes.NEW_PLACE,
      page: () => NewPlaceScreen(),
    ),
    GetPage(
      name: Routes.PLACE_REVIEW,
      page: () => PlaceReviewScreen(),
    ),
  ];
}