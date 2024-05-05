import 'package:get/get.dart';

class TapController extends GetxController{
  int _x = 0; // private variable
  int get x => _x;

  RxInt _y=0.obs;
  RxInt get y=>_y;

  void increseX(){
    _x++;
    update();
    print(_x);
  }
  void decreaseX(){
    _x--;
    update();
  }
  void increseY(){
    _y.value++;
  }
  void decreaseY(){
    _y.value--;
  }

}

