import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_get_x/src/controller/DependencyController.dart';

class GetLazyPut extends StatelessWidget {
  const GetLazyPut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetLazyPut'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('컨트롤러 접근'),
          onPressed: () {
            Get.find<DependencyController>().access();
          },
        ),
      ),
    );
  }
}
