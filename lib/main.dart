import 'package:flutter/material.dart';
import 'package:flutter_getx/screens/my_Cart.dart';
import 'package:get/get.dart';

void main() {
  runApp(const FlutterGetX());
}

class FlutterGetX extends StatelessWidget {
  const FlutterGetX({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    GetMaterialApp(
      title: "Shopping Cart",
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: MyCart(),
    );
  }
}
