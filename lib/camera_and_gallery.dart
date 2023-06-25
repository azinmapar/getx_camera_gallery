import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_camera_gallery/controllers/camera_controller.dart';
import 'package:image_picker/image_picker.dart';

class CameraAndGallery extends StatelessWidget {
  const CameraAndGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker'),
        centerTitle: true,
      ),
      body: SizedBox(
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              // * if user picked any file or not
              return Get.find<CameraController>().imagePath.value == ''
                  ? Container()
                  : SizedBox(
                      width: Get.width,
                      height: Get.height / 2,
                      child: Image.file(
                        File(Get.find<CameraController>().imagePath.value),
                      ),
                    );
            }),
            Obx(() {
              return Text(
                Get.find<CameraController>().imageSize.value,
              );
            }),
            ElevatedButton(
              onPressed: () {
                // * Sets camera as the way which user chose
                Get.find<CameraController>().getImage(ImageSource.camera);
              },
              child: const Text('camera'),
            ),
            ElevatedButton(
              onPressed: () {
                // * Sets gallery as the way which user chose
                Get.find<CameraController>().getImage(ImageSource.gallery);
              },
              child: const Text('gallery'),
            ),
          ],
        ),
      ),
    );
  }
}
