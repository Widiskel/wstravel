import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wstravel/app/controllers/navbar_controller.dart';
import 'package:wstravel/color_pallete.dart';

class AppBarTitle extends StatelessWidget {
  AppBarTitle({Key? key}) : super(key: key);

  final botnav = Get.put(
    NavBarController(),
    permanent: false,
  );

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AppBar(
        elevation: botnav.appBarElevation.value.toDouble(),
        backgroundColor: appBlue,
        title: Text(botnav.appBarTitle.value),
      ),
    );
  }
}
