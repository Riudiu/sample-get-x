import 'package:get/get.dart';

enum NUM { FIRST, SECOND }

class User {
  String name = "";
  int age = 0;

  User({required this.name, required this.age});
}

// getX는 컨트롤러의 생성과 삭제를 알아서 해준다.
// instance했다는 것은 메모리에 올라가는 것인데 getX는 컨트롤러의 instance를 알아서 삭제해서 메모리를 관리해준다.
class CountControllerWithReactive extends GetxController {
  static CountControllerWithReactive get to => Get.find();

  /// obs는 observable의 약자
  /// 반응형으로 obs가 변화를 감지해준다.
  RxInt count = 0.obs;

  /// 다른 타입들도 가능
  RxDouble doubleValue = 0.0.obs;
  RxString stringValue = "".obs;
  Rx<NUM> num = NUM.FIRST.obs;
  Rx<User> user = User(name: "", age: 0).obs;
  RxList<String> list = <String>[].obs;
  RxList<dynamic> list22 = [].obs;

  void increase() {
    count++;
  }

  void putNumber(int value) {
    count(value);
  }

  // onInit같은 생명주기는 GetxController를 상속받아야 사용할 수 있다.
  // 하지만 기본적은 GetX의 reactive 기능은 GetxController를 상속받지 않아도 사용 가능하다.
  @override
  void onInit() {
    // reactive 방식에서만 사용할 수 있는 특별한 기능들이 바로 workers이다.
    // 이를 사용하면 Rx 변수들의 변화를 감지하고 다양한 상황 별로 적절한 대응을 할 수 있다.

    // count가 처음으로 변경되었을 때만 호출된다.
    once(count, (_) => print("처음 한 번만 호출"));

    // count가 변경될 때마다 호출된다.
    ever(count, (_) => print("매번 호출"));

    // count가 변경되다가 마지막 변경 후, duration 값 동안(여기선 2초간) 변경이 없을 때 한번 호출된다.
    // debounce는 검색 기능 같은 데에서 쓸 수 있다. 최종 입력을 멈췄을 때 api 호출
    debounce(count, (_) => print("마지막 변경 후에 한 번만 호출"),
        time: Duration(seconds: 2));

    // count가 변경되고 있는 동안, duration 값의 간격마다 호출된다.
    interval(count, (_) => print("변경되고 있는 동안 1초마다 호출"),
        time: Duration(seconds: 1));

    super.onInit();
  }
}
