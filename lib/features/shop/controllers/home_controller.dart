import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final carouselIndex = 0.obs;

  void updatePageIndicator(int index) {
    carouselIndex.value = index;
  }
}
