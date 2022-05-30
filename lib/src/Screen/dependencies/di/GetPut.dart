import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_get_x/src/controller/DependencyController.dart';

class GetPut extends StatelessWidget {
  const GetPut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetPut'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('access'),
          onPressed: () {
            // print(Get.find<DependencyController>().hashCode);
            Get.find<DependencyController>().access();
          },
        ),
      ),
    );
  }
}
