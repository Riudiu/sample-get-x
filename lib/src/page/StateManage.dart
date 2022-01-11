import 'package:flutter/material.dart';
import 'package:sample_get_x/src/router/RoutePage.dart';

class StateManage extends StatelessWidget {
  const StateManage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State 관리'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('단순 상태 관리'),
              onPressed: () {
                RoutePage.movePage(RoutePage.SIMPLE_STATE_MANAGE);
              },
            ),
            ElevatedButton(
              child: Text('반응형 상태 관리'),
              onPressed: () {
                RoutePage.movePage(RoutePage.REACTIVE_STATE_MANAGE);
              },
            ),
          ],
        ),
      ),
    );
  }
}
