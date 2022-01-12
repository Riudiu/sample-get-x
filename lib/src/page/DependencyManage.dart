import 'package:flutter/material.dart';
import 'package:sample_get_x/src/router/RoutePage.dart';

class DependencyManage extends StatelessWidget {
  const DependencyManage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('종속성 관리'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('의존성 주입'),
              onPressed: () {
                RoutePage.movePage(RoutePage.DEPENDENCY_INFUSE);
              },
            ),
            ElevatedButton(
              child: Text('바인딩'),
              onPressed: () {
                // RoutePage.movePage(RoutePage.);
              },
            ),
          ],
        ),
      ),
    );
  }
}
