import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../pages/welcome/index.dart';
import 'names.dart';

//TODO : 2
class AppPages {
  static const initial = AppRoutes.initial;
  static const application = AppRoutes.application;
  static final RouteObserver<Route> observer = RouteObserver();
  static List<String> history = [];
  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.initial,
      page: () => const WelcomePage(),
      binding: WelcomeBinding(),
    ),
  ];
}
