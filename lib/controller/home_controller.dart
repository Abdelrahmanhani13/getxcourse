import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeController extends GetxController {

  int counter = 0;

  void incrementCounter() {
    counter++;
    update();
  }

  void decrementCounter() {
    counter--;
    update();
  }
}