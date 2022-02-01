import 'package:apigetxtest/models/user_model.dart';
import 'package:apigetxtest/services/user_service.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  var title = 'Vengo del Controller'; // Nuevo
  var users = <User>[].obs;
  final service = UserService();

  int get howManyUsers => users.length; // Nuevo

  @override
  void onInit() {
    getUsersCtrl();
    super.onInit();
  }

  getUsersCtrl() async {
    var result = await service.getUsers();
    users.addAll(result);
  }
}
