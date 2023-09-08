import 'package:flutter/material.dart';
import 'package:flutter_getx/screens/controller.dart';
import 'package:get/get.dart';

class DisplayTotal extends StatelessWidget {
  DisplayTotal({Key? key}) : super(key: key);

  final CustomController c = Get.put(CustomController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Total items",
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 30,
                color: Colors.blue),
              ),
            const SizedBox(height: 10),
            Container(
              height: 120,
              width: 120,
                decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(60), color: Colors.redAccent),
                child: Center(
                  child: Obx(() => Text(
                    c.sum.toString(),
                    style: const TextStyle(fontSize: 45, color: Colors.white),
                  ),
                )),
              ),
            const SizedBox(height: 20),
            Obx(() => 
              Text("Books: ${c.countBooks.toString()}",
              style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 25))),
            Obx(() => 
              Text("Pens: ${c.countPens.toString()}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 25))),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(2),
              width: 180,
              height: 70,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                    )
                  ),
                onPressed: () => Get.back(),
                child: const Text("Go back", 
                  style: TextStyle(fontSize: 30)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
