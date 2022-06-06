import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:sample_project/pages/detail/controller/detail_controller.dart';

class DetailBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(DetailController());
  }
}
