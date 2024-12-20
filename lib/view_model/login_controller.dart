import 'package:get/get.dart';

class LoginController extends GetxController {
  // Observables
  var isPasswordHidden = true.obs;
  var username = ''.obs;
  var password = ''.obs;

  // Toggle password visibility
  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  // Handle login logic
  void login() {
    if (username.isEmpty || password.isEmpty) {
      Get.snackbar('Error', 'Please fill in all fields');
    } else {
      // Perform login logic here
      Get.snackbar('Success', 'Logged in successfully');
    }
  }

  // Navigate to the register page
  void navigateToRegister() {
    Get.toNamed('/register');
  }
}
