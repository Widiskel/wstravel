import 'package:flutter/material.dart';
import 'package:wstravel/color_pallete.dart';

class TiketUnauthenticate extends StatelessWidget {
  const TiketUnauthenticate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 5,
          backgroundColor: appBlue,
          bottom: const PreferredSize(
              preferredSize: Size.fromHeight(0),
              child: Material(
                color: appBlue,
                child: TabBar(
                    unselectedLabelColor: appBg,
                    labelColor: appWhite,
                    indicatorPadding:
                        EdgeInsets.only(top: kTextTabBarHeight * 0.9),
                    indicator: ShapeDecoration(
                        shape: RoundedRectangleBorder(), color: appWhite),
                    tabs: <Widget>[
                      Tab(
                        text: "Aktif",
                      ),
                      Tab(
                        text: "Menunggu",
                      ),
                    ]),
              )),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.train,
                size: 200,
                color: appBlue,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "Bergabunglah untuk keuntungan yang lebih banyak",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(appBg),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(color: appBlue),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: const Text(
                        "Masuk",
                        style: TextStyle(
                            color: appBlue, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(appBg),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(color: appBlue),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: const Text(
                        "Daftar",
                        style: TextStyle(
                            color: appBlue, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
