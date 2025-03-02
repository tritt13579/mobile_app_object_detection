import 'dart:math';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class CameraPreviewWidget extends StatelessWidget {
  final CameraController controller;
  final int sensorOrientation;

  const CameraPreviewWidget({
    super.key,
    required this.controller,
    required this.sensorOrientation
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Transform.rotate(
        angle: sensorOrientation == 90 ? pi / 2 : 0,
        child: AspectRatio(
          aspectRatio: controller.value.aspectRatio,
          child: CameraPreview(controller),
        ),
      ),
    );
  }
}