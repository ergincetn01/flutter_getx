import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomController extends GetxController {
  var countBooks = 0.obs;
  var countPens = 0.obs;
  int get sum=> countBooks.value + countPens.value;

  booksIncrement() {
    countBooks.value++;
  }

  booksDecrement() {

    if (countBooks.value > 0) {
      countBooks.value--;
    } 
    else {
      Get.snackbar(
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
  }

  pensIncrement() {
    countPens.value++;
  }

  pensDecrement() {
    if (countPens.value > 0) {
      countPens.value--;
    } else {
      Get.snackbar("Buying pens....", "Cannot be less than zero",
        barBlur: 20,
        duration: const Duration(seconds: 2),
        icon: const Icon(
          Icons.warning,
          color: Colors.redAccent,
        ),
      );
    }
  }
}
