import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text("Login"),
            onTap: () {
              Get.toNamed("login");
            },
          )
        ],
      ),
    );
  }
}
