import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sample_get_x/src/router/RoutePage.dart';

class NamedSecond extends StatelessWidget {
  const NamedSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page(Named)'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('뒤로 이동'),
              onPressed: () {
                Get.back();
              },
            ),
            ElevatedButton(
              child: Text('홈으로 이동'),
              onPressed: () {
                Get.offAllNamed(RoutePage.HOME_ROUTE);
              },
            ),
          ],
        ),
      ),
    );
  }
}
