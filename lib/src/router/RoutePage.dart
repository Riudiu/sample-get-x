import 'package:get/get.dart';
import 'package:sample_get_x/src/Screen/dependencies/BindingPage.dart';
import 'package:sample_get_x/src/Screen/manage/DependencyManage.dart';
import 'package:sample_get_x/src/Screen/HomeScreen.dart';
import 'package:sample_get_x/src/Screen/route/url/UserPage.dart';
import 'package:sample_get_x/src/Screen/state/ReactiveStateManage.dart';
import 'package:sample_get_x/src/Screen/manage/RouteManage.dart';
import 'package:sample_get_x/src/Screen/state/SimpleStateManage.dart';
import 'package:sample_get_x/src/Screen/manage/StateManage.dart';
import 'package:sample_get_x/src/Screen/dependencies/DependencyInfuse.dart';
import 'package:sample_get_x/src/Screen/route/argument/ArgumentNext.dart';
import 'package:sample_get_x/src/Screen/route/named/NamedFirst.dart';
import 'package:sample_get_x/src/Screen/route/named/NamedSecond.dart';
import 'package:sample_get_x/src/binding/DependencyControllerBinding.dart';

class RoutePage {
  static const String HOME_ROUTE = "/home";
  static const String ROUTE_MANAGE = "/routeManage";
  static const String STATE_MANAGE = "/stateManage";
  static const String DEPENDENCY_MANAGE = "/dependencyManage";
  static const String NAMED_FIRST = "/namedFirst";
  static const String NAMED_SECOND = "/namedSecond";
  static const String ARGUMENT_NEXT = "/argumentNext";
  static const String URL_USER = "/user";
  static const String SIMPLE_STATE_MANAGE = "/simpleStateManage";
  static const String REACTIVE_STATE_MANAGE = "/reactiveStateManage";
  static const String DEPENDENCY_INFUSE = "/dependencyInfuse";
  static const String BINDING_PAGE = "/bindingPage";

  ///페이지 이동
  static movePage(String pageName) => Get.toNamed(pageName);

  static movePageWithArgument(String pageName, dynamic arguments) =>
      Get.toNamed(pageName, arguments: arguments);

  static moveOffAllNamed(String pageName) => Get.offAllNamed(pageName);

  static final List<GetPage> getPageList = [
    GetPage(
      name: HOME_ROUTE,
      page: () => HomeScreen(),
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
      name: DEPENDENCY_MANAGE,
      page: () => DependencyManage(),
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
    GetPage(
      name: DEPENDENCY_INFUSE,
      page: () => DependencyInfuse(),
    ),
    GetPage(
      name: BINDING_PAGE,
      page: () => BindingPage(),
      binding: DependencyControllerBinding(),
    ),
  ];
}
