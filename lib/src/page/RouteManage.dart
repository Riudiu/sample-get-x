import 'package:flutter/material.dart';
import 'package:sample_get_x/src/page/normal/NormalFirst.dart';
import 'package:get/get.dart';
import 'package:sample_get_x/src/router/RoutePage.dart';

class RouteManage extends StatefulWidget {
  const RouteManage({Key? key}) : super(key: key);

  @override
  _RouteManageState createState() => _RouteManageState();
}

class _RouteManageState extends State<RouteManage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Route 관리'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('일반적인 라우트'),
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (_) => NormalFirst(),
                // ));
                Get.to(() => NormalFirst());
              },
            ),
            ElevatedButton(
              child: Text('Named 라우트'),
              onPressed: () {
                // Navigator.of(context).pushNamed("/namedFirst");
                Get.toNamed(RoutePage.NAMED_FIRST);
              },
            ),
            ElevatedButton(
              child: Text('Argument 전달'),
              onPressed: () {
                // Get.toNamed(RoutePage.ARGUMENT_NEXT,
                //     arguments: {"name": "riudiu", "age": "22"});
                Get.toNamed(RoutePage.ARGUMENT_NEXT, arguments: info());
              },
            ),
          ],
        ),
      ),
    );
  }
}

class info {
  String name = 'riudiu';
  int age = 22;
  String motto = 'Done is better than perfect';
}
