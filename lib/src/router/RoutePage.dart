import 'package:get/get.dart';
import 'package:sample_get_x/src/page/Home.dart';
import 'package:sample_get_x/src/page/ReactiveStateManage.dart';
import 'package:sample_get_x/src/page/RouteManage.dart';
import 'package:sample_get_x/src/page/SimpleStateManage.dart';
import 'package:sample_get_x/src/page/StateManage.dart';
import 'package:sample_get_x/src/page/argument/ArgumentNext.dart';
import 'package:sample_get_x/src/page/named/NamedFirst.dart';
import 'package:sample_get_x/src/page/named/NamedSecond.dart';
import 'package:sample_get_x/src/page/url/UserPage.dart';

class RoutePage {
  static const String HOME_ROUTE = "/home";
  static const String ROUTE_MANAGE = "/routeManage";
  static const String STATE_MANAGE = "/stateManage";
  static const String NAMED_FIRST = "/namedFirst";
  static const String NAMED_SECOND = "/namedSecond";
  static const String ARGUMENT_NEXT = "/argumentNext";
  static const String URL_USER = "/user";
  static const String SIMPLE_STATE_MANAGE = "/simpleStateManage";
  static const String REACTIVE_STATE_MANAGE = "/reactiveStateManage";

  static movePage(String pageName) => Get.toNamed(pageName);

  static movePageWithArgument(String pageName, dynamic arguments) =>
      Get.toNamed(pageName, arguments: arguments);

  static Future<dynamic> movePageWithArgumentCallBack(
          String pageName, dynamic arguments) async =>
      Get.toNamed(pageName, arguments: arguments);

  static moveOffAllNamed(String pageName) => Get.offAllNamed(pageName);

  static final List<GetPage> getPageList = [
    GetPage(
      name: HOME_ROUTE,
      page: () => MyHome(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: ROUTE_MANAGE,
      page: () => RouteManage(),
    ),
    GetPage(
      name: STATE_MANAGE,
      page: () => StateManage(),
    ),
    GetPage(
      name: NAMED_FIRST,
      page: () => NamedFirst(),
    ),
    GetPage(
      name: NAMED_SECOND,
      page: () => NamedSecond(),
    ),
    GetPage(
      name: ARGUMENT_NEXT,
      page: () => ArgumentNext(),
    ),
    GetPage(
      name: URL_USER,
      page: () => UserPage(),
    ),
    GetPage(
      name: SIMPLE_STATE_MANAGE,
      page: () => SimpleStateManage(),
    ),
    GetPage(
      name: REACTIVE_STATE_MANAGE,
      page: () => ReactiveStateManage(),
    ),
  ];
}
