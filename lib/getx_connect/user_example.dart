import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx_flutter/getx_connect/user_binding.dart';
import 'package:learn_getx_flutter/getx_connect/user_view.dart';

class ConnectExample extends StatelessWidget {
  const ConnectExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const UserView(),
      initialBinding: UserBinding(),
    );
  }
}
