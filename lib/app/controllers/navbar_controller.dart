// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';
import 'package:wstravel/app/modules/home/controllers/home_controller.dart';

class NavBarController extends GetxController {
  final homeController = Get.put(
    HomeController(),
    permanent: true,
  );

  final navBarIndex = 0.obs;
  final appBarTitle = "Beranda".obs;
  final appBarElevation = 5.obs;

  void changeTabIndex(int index) {
    if (index == 0) {
      appBarTitle.value = "Beranda";
      navBarIndex.value = index;
      appBarElevation.value = 5;
      homeController.appBarHeight.value = 56;
      // print("${navBarIndex.value},${appBarTitle.value}");
    } else if (index == 1) {
      navBarIndex.value = index;
      appBarTitle.value = "Tiket";
      appBarElevation.value = 0;
      homeController.appBarHeight.value = 50;
      // print("${navBarIndex.value},${appBarTitle.value}");
    } else {
      homeController.logstat.value == true
          ? appBarTitle.value = "Akun"
          : appBarTitle.value =
              "Bergabunglah untuk keuntungan\nyang lebih banyak";
      navBarIndex.value = index;
      appBarElevation.value = 0;
      homeController.appBarHeight.value = 70;
      // print("${navBarIndex.value},${appBarTitle.value}");
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
