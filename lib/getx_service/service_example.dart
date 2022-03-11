import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx_flutter/getx_service/service_view.dart';


class ServiceExample extends StatelessWidget {
  const ServiceExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      home: Example(),
    );
  }
}
