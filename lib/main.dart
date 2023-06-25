import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_camera_gallery/Bindings/my_bindings.dart';
import 'package:getx_camera_gallery/camera_and_gallery.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: MyBindings(),
      home: const CameraAndGallery(),
    );
  }
}
