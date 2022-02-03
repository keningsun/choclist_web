import 'package:get/get.dart';

import '../app.dart';

class RouteConfig {
  static final List<GetPage> getPages = [
    GetPage(name: "/", page: () => AppPage()),
  ];
}
