import 'package:get/get.dart';
import 'package:sample_get_x/src/page/Home.dart';
import 'package:sample_get_x/src/page/RouteManage.dart';
import 'package:sample_get_x/src/page/named/NamedFirst.dart';
import 'package:sample_get_x/src/page/named/NamedSecond.dart';

class RoutePage {
  static const String HOME_ROUTE = "/home";
  static const String ROUTE_MANAGE = "/routeManage";
  static const String NAMED_FIRST = "/namedFirst";
  static const String NAMED_SECOND = "/namedSecond";

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
    GetPage(
      name: NAMED_FIRST,
      page: () => NamedFirst(),
    ),
    GetPage(
      name: NAMED_SECOND,
      page: () => NamedSecond(),
    ),
  ];
}
