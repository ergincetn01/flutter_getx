import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookSnackbar extends GetxController {
  final bookSnackBar = Get.snackbar(
    "Buying books....",
    "Cannot be less than zero",
    barBlur: 20,
    duration: const Duration(seconds: 2),
    icon: const Icon(
      Icons.warning,
      color: Colors.redAccent,
    ),
  );
}
