import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_get_x/src/Screen/dependencies/di/GetLazyPut.dart';
import 'package:sample_get_x/src/Screen/dependencies/di/GetPut.dart';
import 'package:sample_get_x/src/controller/DependencyController.dart';

class DependencyInfuse extends StatelessWidget {
  const DependencyInfuse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('의존성 주입'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('GetPut'),
              onPressed: () {
                Get.to(
                  () => GetPut(),
                  binding: BindingsBuilder(() {
                    // binding을 이용해서 필요한 의존성을 주입해준다.
                    // 페이지를 이동할 때 binding으로 controller의 의존성을 주입해주는 것이다.
                    // Get put은 페이지에 들어감과 동시에 인스턴스화, 메모리에 올려준다.
                    Get.put(DependencyController());
                  }),
                );
                // 뒤로 나가게 되면 생성했던 컨트롤러를 close해주고, 메모리로부터 delete를 해준다.
                // 인스턴스화를 해줬다는 것은 사용자 디바이스의 메모리에 올려지는 것이기에, 이 메모리에
                // 인스턴스가 계속 쌓이게 되면 점점 느려지고 성능이 떨어진다.
                // GetX를 사용하면 더이상 사용하지 않을 떄 알아서 삭제를 해줘서 메모리 관리에 용이하다.
              },
            ),
            ElevatedButton(
              child: Text('Get.lazyPut'),
              onPressed: () {
                Get.to(
                  () => GetLazyPut(),
                  binding: BindingsBuilder(() {
                    // Get.lazyPut 으로 컨트롤러를 주입하면 페이지를 이동할 때 바로 메모리에 올라가지 않는다.
                    // 해당 컨트롤러를 사용할 때 메모리에 올라간다.
                    // 만약에 GetLazyPut페이지에서 lazyPut로 주입한 DependencyController를
                    // Get.find<DependencyController>().access() 로 호출했을 때 initialized(메모리올라감)된다.
                    // 그리고 GetLazyPut페이지가 사라지면 DependencyController onDelete()가 호출되고
                    // "DependencyController" deleted from memory가 된다.
                    Get.lazyPut(() => DependencyController());
                  }),
                );
              },
            ),
            ElevatedButton(
              child: Text('Get.putAsync'),
              onPressed: () {
                Get.to(
                  () => GetPut(),
                  binding: BindingsBuilder(() {
                    // Get.putAsync는 비동기처리를 해준다. Get.put과 마찬가지로 initialized는 페이지 이동 시 바로 된다.
                    // 하지만 await을 이용한다면 n초 후에 initialized 시킬 수 있다. 정리하자면 페이지 진입 후 비동기처리를 동기처럼 처리하고,
                    // 그 다음에 DependencyController를 주입해서 초기화 할 수 있는 것이다. 하지만 그렇게 많이 쓰일 것 같지는 않다.
                    Get.putAsync<DependencyController>(() async {
                      await Future.delayed(Duration(seconds: 2));
                      return DependencyController();
                    });
                  }),
                );
              },
            ),
            ElevatedButton(
              child: Text('Get.create'),
              onPressed: () {
                Get.to(
                  () => GetPut(),
                  binding: BindingsBuilder(() {
                    // Get.create을 제외하고는 모두 singleton 방식이다. Get.create도 Get.lazyPut처럼 바로 initialized 되지 않는다.
                    // 사용할 때 initialized화 된다. 하지만 Get.create는 인스턴스들이 여러 개가 만들어진다.
                    // 이 경우에는 controller delete가 자동으로 되지 않는다. 직접 해줘야한다.
                    // 그러나 특별한 경우를 제외하고는 안 쓰는게 좋을 것 같다.
                    Get.create(() => DependencyController());
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
