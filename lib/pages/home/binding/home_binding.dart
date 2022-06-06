import 'package:get/get.dart';

import '../../../services/api_sevice.dart';
import '../controller/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ApiService());
    Get.put(HomeController());

    // TODO: implement dependencies
  }
}
