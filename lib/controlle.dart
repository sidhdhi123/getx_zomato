import 'package:get/get.dart';

class controller extends GetxController {
  //slider page
  RxString grp = "Female".obs;
  RxDouble v = 2.0.obs;

  void change(double value) {
    v.value = value;
  }

  void gen(String value) {
    grp.value = value;
  }

  // menu page
  List<bool> v1 = List.filled(6, false).obs;
  RxInt total = 0.obs;

  void add(int pos, bool val, int price) {
    v1[pos] = val;
    print("hello1");
    if (v1[pos] == true) {
      total = total + price;
    } else {
      total = total - price;
    }
  }
}
