import 'package:get/get.dart';

class HomeController extends GetxController {
  List<String> listSize = ['Tall', 'Grande', 'Venti'];

  final isChoose = false.obs;

  final isChooseList = [false, false, false].obs;

  final sizeList = [90.0, 130.0, 190.0];

  final index = 0.obs;

  void onSizeSelected(int index) {
    this.index.value = index;
    for (int i = 0; i < isChooseList.length; i++) {
      if (i == index) {
        isChooseList[i] = true;
      } else {
        isChooseList[i] = false;
      }
    }
    update();
  }
}
