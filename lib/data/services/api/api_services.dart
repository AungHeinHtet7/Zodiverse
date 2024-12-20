class ApiService {
  static Future<Map<String, dynamic>> login(
      Map<String, dynamic> loginData) async {
    final response = await http.post(
      Uri.parse(AppUrl().ldsfklj),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(loginData),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to login: ${response.body}');
    }
  }

  static Future<Map<String, dynamic>> register(
      Map<String, dynamic> registerData) async {
    final response = await http.post(
      Uri.parse('https://api.example.com/register'),
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
