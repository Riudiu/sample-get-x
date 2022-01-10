import 'package:get/get.dart';
import 'package:sample_get_x/src/page/Home.dart';
import 'package:sample_get_x/src/page/RouteManage.dart';

class RoutePage {
  static const String HOME_ROUTE = "/home";
  static const String ROUTE_MANAGE = "/routeManage";

  static movePage(String pageName) => Get.toNamed(pageName);

  static final List<GetPage> getPageList = [
    GetPage(
      name: HOME_ROUTE,
      page: () => MyHome(),
    ),
    GetPage(
      name: ROUTE_MANAGE,
      page: () => RouteManage(),
    ),
  ];
}
