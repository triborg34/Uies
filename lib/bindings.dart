import 'package:get/get.dart';
import 'package:tests/controller.dart';

class MyBindigs extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Controllers());
  }
}
