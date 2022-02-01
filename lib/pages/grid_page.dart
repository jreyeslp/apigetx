import 'package:apigetxtest/controllers/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GridPage extends StatelessWidget {
  const GridPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(UserController());

    return Scaffold(
      body: Obx(
        () => SafeArea(
          child: GridView.count(
            padding: const EdgeInsets.all(5),
            crossAxisCount: 2,
            children: controller.users.map(
              (item) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.teal.shade100,
                          child: Text(item.name),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ).toList(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.copy_rounded),
        onPressed: () => Get.toNamed('/clone'),
      ),
    );
  }
}
