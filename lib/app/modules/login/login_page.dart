import 'package:flu_test/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rive/rive.dart';

import 'login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginPage'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            child: Assets.rive.login.rive(
              controllers: [
                controller.failAnim,
                controller.idleAnim,
              ],
              onInit: (p0) {
                var ctrl =
                    StateMachineController.fromArtboard(p0, "State Machine 1");
                controller.animCtrl = ctrl;
                p0.addController(ctrl!);
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              (controller.animCtrl?.findInput<bool>('fail') as SMITrigger)
                  .change(true);
            },
            child: const Text("FAIL"),
          ),
          ElevatedButton(
            onPressed: () {
              (controller.animCtrl?.findInput<bool>('success') as SMITrigger)
                  .change(true);
            },
            child: const Text("SUCCESS"),
          ),
          ElevatedButton(
            onPressed: () {
              var input =
                  (controller.animCtrl?.findInput<bool>('hands_up') as SMIBool);
              input.change(!input.value);
            },
            child: const Text("HandsUp"),
          ),
        ],
      ),
    );
  }
}
