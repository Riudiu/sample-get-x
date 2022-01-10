import 'package:flutter/material.dart';
import 'package:sample_get_x/src/page/normal/NormalFirst.dart';
import 'package:get/get.dart';

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
            ElevatedButton(onPressed: () {}, child: Text('2')),
            ElevatedButton(onPressed: () {}, child: Text('3')),
          ],
        ),
      ),
    );
  }
}
