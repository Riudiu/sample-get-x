import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_get_x/src/Screen/route/normal/NormalFirst.dart';
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
            ElevatedButton(
              child: Text('동적 URL'),
              onPressed: () {
                Get.toNamed('user?name=riudiu&age=22');
              },
            ),
            SizedBox(height: 50),
            ElevatedButton(
              child: Text('스낵바 생성'),
              onPressed: () {
                Get.snackbar('This is SnackBar', 'Woowwowww',
                    snackPosition: SnackPosition.TOP);
              },
            ),
            ElevatedButton(
              child: Text('Default Dialog'),
              onPressed: () {
                Get.defaultDialog(
                    title: 'This is Dialog', middleText: 'yeeaaahhhh');
              },
            ),
            ElevatedButton(
              child: Text('Bottom Sheet'),
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    height: 100,
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        'This is BottomSheet',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                );
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
