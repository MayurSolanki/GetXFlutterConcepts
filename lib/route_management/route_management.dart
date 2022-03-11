import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:learn_getx_flutter/main.dart';
/// Get.to(NextScreen)    | Get
///  Get.back
///  get.off
///   get.offAll

class RouteManagement extends GetxController {
  // const RouteManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SizedBox(
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                child: const Text(
                    "data",
                     style: TextStyle(color: Colors.white),
                ),
                color: Colors.red
               ,onPressed: () =>{
                  Get.off(MyApp),

                  print("Button presses")

              }),
            ],
          ),
        ),
      ),

    );
  }
}
