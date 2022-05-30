import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_get_x/src/controller/DependencyController.dart';

class BindingPage extends StatelessWidget {
  const BindingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Binding'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<DependencyController>(builder: (controller) {
              return Text("${controller.number}",
                  style: TextStyle(fontSize: 37));
            }),

            SizedBox(height: 10),

            /// - 버튼
            ElevatedButton(
              onPressed: () {
                DependencyController.to.minus();
              },
              child: Text(
                "-",
                style: TextStyle(fontSize: 30),
              ),
            ),

            /// 컨트롤러 접근 버튼
            ElevatedButton(
              child: Text('컨트롤러 접근'),
              onPressed: () {
                DependencyController.to.access();
              },
            ),
          ],
        ),
      ),
    );
  }
}
