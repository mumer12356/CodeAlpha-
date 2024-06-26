import '../../../../../utils/constants/exports.dart';


class HomeController extends GetxController{
  static HomeController get instance => Get.find();

  final crouselCurrentIndex=0.obs;


  void updatePageIndicator(index){
    crouselCurrentIndex.value=index;
  }

}