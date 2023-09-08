import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PenSnackbar extends GetxController {
  final penSnackbar = Get.snackbar(
    "Buying pens....",
    "Cannot be less than zero",
    barBlur: 20,
    duration: const Duration(seconds: 2),
    icon: const Icon(
      Icons.warning,
      color: Colors.redAccent,
    ),
  );
}
