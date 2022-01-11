import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_get_x/src/page/controller/CountControllerWithGetX.dart';
import 'package:sample_get_x/src/page/controller/CountControllerWithGetXById.dart';

class WithGetX extends StatelessWidget {
  const WithGetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("GetX", style: TextStyle(fontSize: 30)),
          GetBuilder<CountControllerWithGetXById>(
              id: "first",
              builder: (controller) {
                return Text("${controller.count}",
                    style: TextStyle(fontSize: 50));
              }),
          ElevatedButton(
            onPressed: () {
              Get.find<CountControllerWithGetXById>().increase('first');
            },
            child: Text(
              "+",
              style: TextStyle(fontSize: 30),
            ),
          ),
          SizedBox(height: 16),
          GetBuilder<CountControllerWithGetX>(builder: (controller) {
            return Text("${controller.count}", style: TextStyle(fontSize: 50));
          }),
          ElevatedButton(
            onPressed: () {
              Get.find<CountControllerWithGetX>().increase();
            },
            child: Text(
              "+",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
