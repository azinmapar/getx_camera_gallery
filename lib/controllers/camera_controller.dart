import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CameraController extends GetxController {
  var imagePath = ''.obs;
  var imageSize = ''.obs;

  void getImage(ImageSource imageSource) async {
    // * Determine whether user picked camera or gallery
    final pickedFile = await ImagePicker().pickImage(source: imageSource);
    // * If user picked a file or not
    if (pickedFile != null) {
      // * Set path
      imagePath.value = pickedFile.path;
      // * Set size
      imageSize.value =
          '${((File(imagePath.value).lengthSync()) / 1024 / 1024).toStringAsFixed(2)}Mb';
    } else {
      Get.snackbar('Error', 'No images selected',
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
