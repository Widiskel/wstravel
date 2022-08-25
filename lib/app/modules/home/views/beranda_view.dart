import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wstravel/color_pallete.dart';

class Beranda extends StatelessWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: Get.width,
              height: Get.height * 0.2,
              child: ScrollConfiguration(
                behavior: ScrollConfiguration.of(context).copyWith(
                  dragDevices: {
                    PointerDeviceKind.touch,
                    PointerDeviceKind.mouse,
                  },
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      padding: const EdgeInsets.all(10),
                      width: 270,
                      height: 100,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              appLightBlue.withOpacity(0.8),
                              appBlue.withOpacity(0.9)
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Bepergian Hanya Untuk\nKeperluan Penting Saja\n#BijakUntukTraveling",
                            style: TextStyle(
                                color: appWhite,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Kamu bisa pesan, batalin, atau ubah jadwal\ntiket kereta api cukup #DiRumahAja\nkarena #selaluAdaJalan dengan KA Access",
                            style: TextStyle(color: appWhite, fontSize: 9),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      padding: const EdgeInsets.all(10),
                      width: 270,
                      height: 100,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              appLightBlue.withOpacity(0.8),
                              appBlue.withOpacity(0.9)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "    Premium Member",
                            style: TextStyle(
                                color: appWhite,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Nikmati Berbagai keuntungan Dengan\nMenjadi Premium Member",
                            style: TextStyle(color: appWhite, fontSize: 9),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: const Material(
                child: TabBar(
                    indicatorColor: appBlue,
                    unselectedLabelColor: appLightBlue,
                    labelColor: appBlue,
                    tabs: <Widget>[
                      Tab(
                        text: "Ka Antar Kota",
                      ),
                      Tab(
                        text: "Ka Lokal",
                      ),
                    ]),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              height: Get.height * 0.4,
              width: Get.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: appWhite,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      offset: Offset(-1, 1),
                      color: appBlack.withOpacity(0.5),
                    ),
                    BoxShadow(
                      blurRadius: 2,
                      offset: Offset(1, -1),
                      color: appBlack.withOpacity(0.5),
                    ),
                  ]),
              child: TabBarView(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Asal"),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(90),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(width: 2, color: appBlue),
                                  borderRadius: BorderRadius.circular(90)),
                              child: Material(
                                borderRadius: BorderRadius.circular(90),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.swap_horiz,
                                    )),
                              ),
                            ),
                          ),
                          const Text("Tujuan")
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Surabaya (SBY)",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: appBlue),
                          ),
                          Text(
                            "Jakarta (JKT)",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: appBlue),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Tanggal Berangkat"),
                          Text("Tanggal Kembali")
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "00 Bulan 2022",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: appBlue),
                          ),
                          Text(
                            "00 Bulan 2022",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: appBlue),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Kelas Kereta"),
                          Text("Penumpang")
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Semua",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: appBlue),
                          ),
                          Text(
                            "0 Bayi",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: appBlue),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(appBg),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(color: appBlue),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Container(
                          height: Get.height * 0.03,
                          alignment: Alignment.center,
                          width: Get.width,
                          child: Text(
                            "Cari",
                            style: TextStyle(color: appBlack),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Text("Lokal"),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
