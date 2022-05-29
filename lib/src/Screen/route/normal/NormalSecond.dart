import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_get_x/src/Screen/HomeScreen.dart';

class NormalSecond extends StatelessWidget {
  const NormalSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('뒤로 이동'),
              onPressed: () {
                // Navigator.of(context).pop();
                Get.back();
              },
            ),
            ElevatedButton(
              child: Text('홈으로 이동'),
              onPressed: () {
                // 모든 이전 화면들을 삭제 후 이동
                Get.offAll(HomeScreen());
                // Navigator.of(context).pushAndRemoveUntil(
                //   MaterialPageRoute(builder: (_) => MyHome()),
                //   (route) => false,
                // );
              },
            ),
          ],
        ),
      ),
    );
  }
}
