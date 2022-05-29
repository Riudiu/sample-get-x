import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_get_x/src/router/RoutePage.dart';

class NamedFirst extends StatelessWidget {
  const NamedFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page(Named)'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('두 번째 페이지로 이동'),
          onPressed: () {
            // off가 들어가면 이전 페이지를 없애고 다음 페이지로 이동한다.
            Get.offNamed(RoutePage.NAMED_SECOND);
          },
        ),
      ),
    );
  }
}
