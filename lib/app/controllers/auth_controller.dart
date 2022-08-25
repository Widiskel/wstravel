// ignore_for_file: unnecessary_overrides

import 'dart:async';

import 'package:get/get.dart';

class AuthState {
  final StreamController<bool> astate = StreamController<bool>();
  StreamSink<bool> get send => astate.sink;
  Stream<bool> get isAuthorized => astate.stream;
  get close => astate.close();
}

class AuthController extends GetxController {
  AuthState a = AuthState();

  @override
  void onInit() {
    a.send.add(false);
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
