import 'package:apigetxtest/models/user_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class UserService {
  final String _url = 'jsonplaceholder.typicode.com';

  Future<List<User>> getUsers() async {
    final url = Uri.https(_url, '/users');
    final resp = await http.get(url);

    final List<dynamic> decodedData = convert.jsonDecode(resp.body);

    return decodedData.map((e) => User.fromJson(e)).toList();
  }
}
