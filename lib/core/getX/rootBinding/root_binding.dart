import 'package:get/get.dart';
import 'package:rahil_shaikh/core/core.dart';
import 'package:rahil_shaikh/core/services/universal_link_service.dart';

class RootBinding implements Bindings {
  RootBinding();

  @override
  Future<void> dependencies() async {
    Get.put(UniversalLink());
    Get.lazyPut(() => BottomNavigationBarController(),fenix: true);
    Get.lazyPut(() => HomePageController());
    Get.lazyPut(() => ChallengesPageController());
  }
}
