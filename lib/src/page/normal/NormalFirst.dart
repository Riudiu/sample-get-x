import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_get_x/src/page/normal/NormalSecond.dart';

class NormalFirst extends StatelessWidget {
  const NormalFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('두 번째 페이지로 이동'),
          onPressed: () {
            Get.to(() => NormalSecond());
          },
        ),
      ),
    );
  }
}
