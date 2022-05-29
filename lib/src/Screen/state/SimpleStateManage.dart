import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:sample_get_x/src/Screen/state/WithGetX.dart';
import 'package:sample_get_x/src/Screen/state/WithProvider.dart';
import 'package:sample_get_x/src/controller/simpleState/CountControllerWithGetX.dart';
import 'package:sample_get_x/src/controller/simpleState/CountControllerWithProvider.dart';
import '../../controller/simpleState/CountControllerWithGetXById.dart';

class SimpleStateManage extends StatelessWidget {
  const SimpleStateManage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get.put으로 Getx 컨트롤러 인스턴스 생성 - 선언이 매우 자유롭다
    Get.put(CountControllerWithGetX());
    Get.put(CountControllerWithGetXById());

    return Scaffold(
      appBar: AppBar(
        title: Text('Simple State Manage Page'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(child: WithGetX()),
            Expanded(
              child: ChangeNotifierProvider<CountControllerWithProvider>(
                create: (_) => CountControllerWithProvider(),
                child: WithProvider(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
