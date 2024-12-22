class LoginModel {
  String? email;
  String? username;
  String password;

  LoginModel({this.email, this.username, required this.password});

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'username': username,
      'password': password,
    };
  }

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      email: json['email'],
      username: json['username'],
      password: json['password'],
    );
  }
}
