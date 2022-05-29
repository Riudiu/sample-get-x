import 'package:flutter/material.dart';
import 'package:sample_get_x/src/router/RoutePage.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
              child: Text('Route 관리'),
              onPressed: () {
                RoutePage.movePage(RoutePage.ROUTE_MANAGE);
              },
            ),
            ElevatedButton(
              child: Text('State 관리'),
              onPressed: () {
                RoutePage.movePage(RoutePage.STATE_MANAGE);
              },
            ),
            ElevatedButton(
              child: Text('종속성 관리'),
              onPressed: () {
                RoutePage.movePage(RoutePage.DEPENDENCY_MANAGE);
              },
            ),
          ],
        ),
      ),
    );
  }
}
