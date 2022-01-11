import 'package:flutter/material.dart';
import 'package:sample_get_x/src/router/RoutePage.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX 주요 기능'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  RoutePage.movePage(RoutePage.ROUTE_MANAGE);
                },
                child: Text('Route 관리')),
            ElevatedButton(
              child: Text('State 관리'),
              onPressed: () {
                RoutePage.movePage(RoutePage.STATE_MANAGE);
              },
            ),
            ElevatedButton(onPressed: () {}, child: Text('종속성 관리')),
          ],
        ),
      ),
    );
  }
}
