import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Page'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${Get.parameters['age']}살 ${Get.parameters['name']}님 환영합니다'),
            SizedBox(height: 15),
            Text('full : ${Get.parameters}'),
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
                primary: Colors.limeAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
