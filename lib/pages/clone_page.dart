import 'package:apigetxtest/controllers/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClonePage extends StatelessWidget {
  ClonePage({Key? key}) : super(key: key);

  final UserController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    final userCount = controller.howManyUsers.toString();

    return Scaffold(
      appBar: AppBar(
        title: Text(controller.title),
      ),
      body: Center(
        child: Text('Hay un total de $userCount usuarios!'),
      ),
    );
  }
}
