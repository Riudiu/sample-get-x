import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_get_x/src/router/RoutePage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter GetX Sample',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      initialRoute: RoutePage.HOME_ROUTE,
      getPages: RoutePage.getPageList,
    );
  }
}
