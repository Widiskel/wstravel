import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wstravel/app/controllers/navbar_controller.dart';
import 'package:wstravel/color_pallete.dart';

class BottomNav extends StatelessWidget {
  BottomNav({Key? key}) : super(key: key);
  final botnav = Get.put(
    NavBarController(),
    permanent: true,
  );
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
          elevation: 3,
          selectedItemColor: appBlue,
          currentIndex: botnav.navBarIndex.value,
          onTap: ((value) {
            botnav.changeTabIndex(value);
          }),
          backgroundColor: appWhite,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Beranda",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: "Tiket",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "Akun",
            ),
          ]),
    );
  }
}
