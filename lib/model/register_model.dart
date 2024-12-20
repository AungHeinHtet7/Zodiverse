class RegisterModel {
  String email;
  String username;
  String password;

  RegisterModel({
    required this.email,
    required this.username,
    required this.password,
  });

  // Convert a RegisterModel object to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'username': username,
      'password': password,
    };
  }

  // Create a RegisterModel object from a JSON map
  factory RegisterModel.fromJson(Map<String, dynamic> json) {
    return RegisterModel(
      email: json['email'],
      username: json['username'],
      password: json['password'],
    );
  }
}
