import 'package:get/get.dart';
import 'package:xapprika/pages/controller/controller.dart';

class AppBindings extends Bindings{
  @override
  void dependencies() {
    Get.put( AppController());
    }

}