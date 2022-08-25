import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wstravel/app/controllers/navbar_controller.dart';
import 'package:wstravel/app/modules/home/views/akun_unaunthenticate.dart';
import 'package:wstravel/app/modules/home/views/beranda_view.dart';
import 'package:wstravel/app/modules/home/views/tiket_unaunthenticate.dart';
import 'package:wstravel/app/widget/bottom_navbar.dart';
import '../../../controllers/auth_controller.dart';
import '../../../widget/appbar_title.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  final auth = Get.put(
    AuthController(),
    permanent: true,
  );
  final navbar = Get.put(
    NavBarController(),
    permanent: true,
  );
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(controller.appBarHeight.toDouble()),
          child: AppBarTitle(),
        ),
        body: StreamBuilder<bool>(
          stream: auth.a.isAuthorized,
          builder: (context, snapshot) {
            controller.logstat.value = snapshot.data as bool;
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return StreamBuilder(
                initialData: 0,
                stream: navbar.navBarIndex.stream,
                builder: (context, snapshot) {
                  if (snapshot.data == 0) {
                    return const Beranda();
                  } else if (snapshot.data == 1) {
                    if (controller.logstat.value == false) {
                      return const TiketUnauthenticate();
                    } else {
                      return const Center(
                        child: Text("tiket logged in"),
                      );
                    }
                  } else {
                    if (controller.logstat.value == false) {
                      return const AkunUnaunthenticate();
                    } else {
                      return const Center(
                        child: Text("akun"),
                      );
                    }
                  }
                },
              );
            }
          },
        ),
        bottomNavigationBar: BottomNav(),
      ),
    );
  }
}
