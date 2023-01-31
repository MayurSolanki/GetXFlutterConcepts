import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:learn_getx_flutter/navigation/screen_navigation.dart';
import 'package:learn_getx_flutter/translations/translations_example.dart';
import 'getx_connect/user_example.dart';
import 'getx_controller/view.dart';
import 'getx_service/settings_service.dart';


Future<void> main() async {
  await GetStorage.init();

  WidgetsFlutterBinding.ensureInitialized();
  await initServices();

  /// AWAIT SERVICES INITIALIZATION., Getx Service
  runApp(const MyApp());
}

Future<void> initServices() async {
  debugPrint('starting services ...');
  // Here is where you put get_storage, hive, shared_pref initialization.
  // or moor connection, or whatever that's async.
  await Get.putAsync(() => SettingsService().init());
  debugPrint('services started ...');
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// Navigation example, navigation between screen
    return const ScreenNavigation();
    /// Reactive State Management example, Using RxInt and Obs
    // return ReactiveStateManagement();
    /// Simple State Management example , using GetBuilder
    //  return const SimpleStateManagement();
    /// Simple Getx Controller example, Create Controller using extends GetXController
    // return GetXControllerExample();
    ///Simple Dependency Management example, Get.find, Get.PutAsync, Get.lazt - Different way of find Controller
    // return DependencyExample();
    /// Simple Translation example , Locale
    // return const TranslationExample();
    /// Simple Getx Theme example, Dark and Light theme
    // return ThemeExample();
    /// Simple Getx Service example, Bind the Service Directly to View -> extends GetView<SettingsService>
    //  return const ServiceExample();
    /// Simple Getx Widget example, extends GetWidget<SettingsService>, cart example, initialize everytime
    // return const WidgetExample();
    /// Simple GetConnect example, List of user example with API call
    // return const ConnectExample();
  }
}
