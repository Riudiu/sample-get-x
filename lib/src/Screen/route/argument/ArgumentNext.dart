import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArgumentNext extends StatelessWidget {
  const ArgumentNext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Argument를 통해 데이터 전달
            Text('full : ${Get.arguments}'),
            Text('name : ${(Get.arguments).name}'),
            Text('age : ${(Get.arguments).age}'),
            Text('motto : ${(Get.arguments).motto}'),
            SizedBox(height: 30),
            ElevatedButton(
              child: Text(
                '뒤로 가기',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                ),
              ),
              onPressed: () {
                Get.back();
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.amberAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
