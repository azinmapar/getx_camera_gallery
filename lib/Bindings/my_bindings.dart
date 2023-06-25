import 'package:get/get.dart';
import '../controllers/camera_controller.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CameraController());
  }
}
