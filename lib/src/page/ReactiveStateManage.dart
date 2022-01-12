import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_get_x/src/controller/CountControllerWithReactive.dart';

class ReactiveStateManage extends StatelessWidget {
  const ReactiveStateManage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithReactive());

    return Scaffold(
        appBar: AppBar(
          title: Text('Reactive State Manage Page'),
          backgroundColor: Colors.pinkAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("GetX", style: TextStyle(fontSize: 30)),
              // Obx()의 경우 사용할 컨트롤러의 종류를 따로 명시할 필요가 없고, 보여줄 위젯만 리턴하면 된다.
              // 하지만 이 방법은 무조건 Get.put()을 필요로 한다.

              // 여기서 Obx는 count의 value 값이 변경될 때만 호출된다.
              // 만약에 count가 1일 때 버튼을 클릭해서 5로 변경시키면 Obx가 호출된다.
              // 그러나 5인 상태에서 5로 변경하는 버튼을 클릭하면 호출되지 않는다. count의 값은 똑같이 5이기 때문이다.
              // 따라서 반응형의 경우 비교적 리소스를 덜 사용하면서 화면을 제어할 수 있게 된다.
              Obx(() => Text(
                  "${Get.find<CountControllerWithReactive>().count.value}",
                  style: TextStyle(fontSize: 50))),
              SizedBox(height: 15),
              ElevatedButton(
                child: Text("+", style: TextStyle(fontSize: 30)),
                onPressed: () {
                  Get.find<CountControllerWithReactive>().increase();
                },
              ),
              SizedBox(height: 10),
              ElevatedButton(
                child: Text("5로 변경", style: TextStyle(fontSize: 20)),
                onPressed: () {
                  Get.find<CountControllerWithReactive>().putNumber(5);
                },
              ),
            ],
          ),
        ));
  }
}
