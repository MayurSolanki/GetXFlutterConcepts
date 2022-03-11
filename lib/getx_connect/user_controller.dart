import 'package:get/get.dart';
import 'package:learn_getx_flutter/getx_connect/user_model.dart';
import 'package:learn_getx_flutter/getx_connect/user_provider.dart';

class UserController extends GetxController with StateMixin<List<UserModel>> {
  final UserProvider userProvider;
  UserController({required this.userProvider, cityProvider});

  @override
  void onInit() {
    super.onInit();
    fetchAllUsers();
  }

  void fetchAllUsers() {
    userProvider.getUsers().then((result) {
      List<UserModel>? data = result.body?.cast<UserModel>();
      change(data, status: RxStatus.success());
    }, onError: (err) {
      change(null, status: RxStatus.error(err.toString()));
    });
  }
}
