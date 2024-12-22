import 'package:zodiverse/data/services/api/api_services.dart';
import 'package:zodiverse/model/login_model.dart';
import 'package:zodiverse/model/register_model.dart';

class AuthRepository {
  Future<Map<String, dynamic>> login(LoginModel loginModel) async {
    try {
      return await ApiService.login(loginModel.toJson());
    } catch (e) {
      throw Exception('Repository: Login failed: $e');
    }
  }

  Future<Map<String, dynamic>> register(RegisterModel registerModel) async {
    try {
      return await ApiService.register(registerModel.toJson());
    } catch (e) {
      throw Exception('Repository: Register failed: $e');
    }
  }
}
