import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx_flutter/getx_service/settings_service.dart';


class Example extends GetView<SettingsService> {
   Example({Key? key}) : super(key: key);

   var controller = Get.find<SettingsService>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Service'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'Pressed ${controller.counter.value} timesss.',
                style: const TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  controller.incrementCounter();
                },
                child: const Text('Increase'))
          ],
        ),
      ),
    );
  }
}
