class LoginModel {
  String email;
  String password;

  LoginModel({required this.email, required this.password});

  // Convert a LoginModel object to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
    };
  }

  // Create a LoginModel object from a JSON map
  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      email: json['email'],
      password: json['password'],
    );
  }
}
