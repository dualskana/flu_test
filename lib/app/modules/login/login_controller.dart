import 'package:get/get.dart';
import 'package:rive/rive.dart';

class LoginController extends GetxController {
  SimpleAnimation idleAnim = SimpleAnimation("idle");
  SimpleAnimation successAnim = SimpleAnimation("success");
  SimpleAnimation handsDownAnim = SimpleAnimation("hands_down");
  SimpleAnimation handsUpAnim = SimpleAnimation("hands_up");
  SimpleAnimation failAnim = SimpleAnimation("fail");
StateMachineController? animCtrl;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
