import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsService extends GetxService {

  late SharedPreferences _prefs;
  final counter = 0.obs;

  Future<SettingsService> init() async {
    debugPrint('$runtimeType initialize shared preference');
    _prefs = await SharedPreferences.getInstance();
    debugPrint('$runtimeType shared preference ready!');
    counter.value = (_prefs.getInt('counter') ?? 0);
    return this;
  }

  Future<void> incrementCounter() async {
    var counterInt = _prefs.getInt('counter') ?? 0;
    counter.value = counterInt++;
    debugPrint('Pressed ${counter.value} timessss.');
    await _prefs.setInt('counter', counter.value);
  }


}
