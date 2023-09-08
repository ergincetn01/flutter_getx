import 'package:flutter/material.dart';
import 'package:flutter_getx/screens/snackbar/book_snackbar.dart';
import 'package:flutter_getx/screens/snackbar/pen_snackbar.dart';
import 'package:get/get.dart';

class CustomController extends GetxController {
  var countBooks = 0.obs;
  var countPens = 0.obs;
  int get sum => countBooks.value + countPens.value;

  booksIncrement() {
    countBooks.value++;
  }

  booksDecrement() {
    if (countBooks.value > 0) {
      countBooks.value--;
    } 
    else {
      BookSnackbar();
    }
  }

  pensIncrement() {
    countPens.value++;
  }

  pensDecrement() {
    if (countPens.value > 0) {
      countPens.value--;
    } 
    else {
      PenSnackbar();
    }
  }
}
