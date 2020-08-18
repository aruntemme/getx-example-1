import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reference/controllers/sumControllers.dart';

class Home2 extends StatelessWidget {
  final count1 = 0.obs;
  final count2 = 0.obs;
  int get sum => count1.value + count2.value;
  final SumController sumController = Get.put(SumController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("STATE MGT"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text("number 1  : ${sumController.count1.value}"),
            ),
            Obx(
              () => Text("number 2  : ${sumController.count2.value}"),
            ),
            Obx(
              () => Text("Sum          : ${sumController.sum}"),
            ),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              onPressed: () {
                sumController.increment1();
              },
              child: Text("Increment #1"),
            ),
            RaisedButton(
              onPressed: () {
                sumController.increment2();
              },
              child: Text("Increment #2"),
            ),
            RaisedButton(
              onPressed: () {
                sumController.count1.value = 0;
                sumController.count2.value = 0;
              },
              child: Text("clear"),
            )
          ],
        ),
      ),
    );
  }
}
