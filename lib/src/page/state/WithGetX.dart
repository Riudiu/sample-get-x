import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_get_x/src/page/controller/CountControllerWithGetX.dart';
import 'package:sample_get_x/src/page/controller/CountControllerWithGetXById.dart';

class WithGetX extends StatelessWidget {
  const WithGetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get.put으로 Getx 컨트롤러 인스턴스 생성 - 선언이 매우 자유롭다
    // GetX의 컨트롤러 선언, 이렇게만 선언하면 어디에서든지 사용 가능
    // 다른 class에서 선언해도 사용 가능하다.
    Get.put(CountControllerWithGetX());
    Get.put(CountControllerWithGetXById());

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
              // 컨트롤러의 update에 id를 부여하면 ex)update([{id}])
              // GetBuilder에 입력한 아이디가 같은 경우에만 controller가 정상적으로 작동한다.
              // 이는 provider에는 없고 GetX에만 있는 기능이다.
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
