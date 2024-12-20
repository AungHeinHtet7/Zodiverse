class AuthRepository {
  Future<Map<String, dynamic>> login(LoginModel loginModel) async {
    try {
      final response = await ApiService.login(loginModel.toJson());
      return response;
    } catch (e) {
      throw Exception('Repository: Login failed: $e');
    }
  }

  Future<Map<String, dynamic>> register(RegisterModel registerModel) async {
    try {
      final response = await ApiService.register(registerModel.toJson());
      return response;
    } catch (e) {
      throw Exception('Repository: Register failed: $e');
    }
  }
}
