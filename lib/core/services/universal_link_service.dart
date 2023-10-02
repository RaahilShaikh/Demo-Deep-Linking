import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rahil_shaikh/core/core.dart';
import 'package:uni_links/uni_links.dart';

class UniversalLink extends GetxService {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    initDeepLinking();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  initDeepLinking() async {
    try {
      final initialLink = await getInitialLink();
      print(initialLink);
      if (initialLink != null) {
        _handleLink(initialLink);
      }
    } on PlatformException {
      // Handle error
    }

    // Listen for deep links when the app is running
    linkStream.listen((String? link) {
      if (link != null) {
        _handleLink(link);
        if (kDebugMode) {
          print(link);
        }
      }
    });
  }

  _handleLink(String link) {
    String screenName = link.split("/").last;
    if (kDebugMode) {
      print("Screen name is $screenName");
    }
    Get.put(BottomNavigationBarController());
    if (screenName == "home") {
      Get.find<BottomNavigationBarController>().changeTab(0);
    } else if (screenName == "challenge") {
      Get.find<BottomNavigationBarController>().changeTab(1);
    } else if (screenName == "pomodoro") {
      Get.find<BottomNavigationBarController>().changeTab(2);
    } else if (screenName == "timeBox") {
      Get.find<BottomNavigationBarController>().changeTab(3);
    } else if (screenName == "account") {
      Get.find<BottomNavigationBarController>().changeTab(4);
    }
  }
}
