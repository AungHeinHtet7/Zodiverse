import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zodiverse/model/login_model.dart';
import '../data/repositories/auth_repository.dart';

class LoginController extends GetxController {
  var emailOrUsername = ''.obs; // Combined input field
  var password = ''.obs;
  var isLoading = false.obs;
  var isPasswordHidden = true.obs;

  final AuthRepository _repository = AuthRepository();

  // Toggle password visibility
  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  // Navigate to the register page
  void navigateToRegister() {
    Get.toNamed('/register');
  }

  void login() async {
    if (emailOrUsername.isEmpty || password.isEmpty) {
      Get.snackbar('Error', 'Please fill in all fields');
      return;
    }

    isLoading.value = true;

    try {
      // Dynamically assign to either email or username
      final loginModel = LoginModel(
        email: emailOrUsername.value.contains('@') ? emailOrUsername.value : "",
        username:
            !emailOrUsername.value.contains('@') ? emailOrUsername.value : "",
        password: password.value,
      );

      final response = await _repository.login(loginModel);

      isLoading.value = false;

      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('access_token', response['access_token']);
      Get.snackbar('Success', response['message']);
      Get.offAllNamed('/home');
      // Navigate to the home screen
    } catch (e) {
      isLoading.value = false;
      Get.snackbar('Error', e.toString());
    }
  }
}
