import 'package:flutter/material.dart';
import 'package:flutter_getx/screens/controller.dart';
import 'package:flutter_getx/screens/display_total.dart';
import 'package:get/get.dart';

class MyCart extends StatelessWidget {
  MyCart({super.key});

  final CustomController c = Get.put(CustomController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        color: Colors.white,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            children: [
              const Text(
                "Books",
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              Expanded(child: Container()),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.redAccent),
                child: IconButton(
                  onPressed: () => c.booksIncrement(),
                  icon: const Icon(Icons.add),
                  color: Colors.white),
              ),
              const SizedBox(width: 40),
              Obx(() => Text(
                c.countBooks.toString(),
                style: const TextStyle(fontSize: 30),
                )),
              const SizedBox(width: 40),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.redAccent),
                child: IconButton(
                  onPressed: () => c.booksDecrement(),
                  icon: const Icon(Icons.remove),
                  color: Colors.white),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const Text(
                "Pens",
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              Expanded(child: Container()),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.redAccent),
                child: IconButton(
                  onPressed: () => c.pensIncrement(),
                  icon: const Icon(Icons.add),
                  color: Colors.white),
              ),
              const SizedBox(width: 40),
              Obx(() => Text(
                c.countPens.toString(),
                style: const TextStyle(fontSize: 30))),
              const SizedBox(width: 40),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.redAccent),
                child: IconButton(
                  onPressed: () => c.pensDecrement(),
                icon: const Icon(Icons.remove),
                color: Colors.white),
              ),
            ],
          ),
          Container(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(child: Container()),
              Container(
                width: 150,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue.shade900),
                child: ElevatedButton(
                  onPressed: () => Get.to(()=> DisplayTotal()),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(30))),
                  child: const Text(
                    "Total",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                )
              )
            ],
          )
        ]),
      ),
    );
  }
}
