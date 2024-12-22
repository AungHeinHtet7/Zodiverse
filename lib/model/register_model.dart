class RegisterModel {
  String email;
  String username;
  String password;

  RegisterModel(
      {required this.email, required this.username, required this.password});

  Map<String, dynamic> toJson() => {
        'email': email,
        'username': username,
        'password': password,
      };

  factory RegisterModel.fromJson(Map<String, dynamic> json) {
    return RegisterModel(
      email: json['email'],
      username: json['username'],
      password: json['password'],
    );
  }
}
