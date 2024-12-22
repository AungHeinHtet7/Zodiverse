import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:zodiverse/res/app_url/app_url.dart';

class ApiService {
  static Future<Map<String, dynamic>> login(
      Map<String, dynamic> loginData) async {
    final loginURL = '${AppUrl.url}${AppUrl.login}';
    final response = await http.post(
      Uri.parse(loginURL),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(loginData),
    );

    if (response.statusCode == 201) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to login: ${response.body}');
    }
  }

  static Future<Map<String, dynamic>> register(
      Map<String, dynamic> registerData) async {
    final registerURL = '${AppUrl.url}${AppUrl.register}';
    final response = await http.post(
      Uri.parse(registerURL),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(registerData),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to register: ${response.body}');
    }
  }
}
