import 'package:apigetxtest/pages/clone_page.dart';
import 'package:apigetxtest/pages/grid_page.dart';
import 'package:flutter/material.dart';

import 'package:get/route_manager.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/grid',
      getPages: [
        GetPage(
          name: '/grid',
          page: () => const GridPage(),
        ),
        GetPage(
          name: '/clone',
          page: () => ClonePage(),
        ),
      ],
    );
  }
}
