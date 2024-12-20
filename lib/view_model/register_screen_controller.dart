import 'package:get/get.dart';

class RegisterController extends GetxController {
  // Observables
  var isPasswordHidden = true.obs;
  var isConfirmPasswordHidden = true.obs;
  var email = ''.obs;
  var username = ''.obs;
  var password = ''.obs;
  var confirmPassword = ''.obs;

  // Toggle visibility for password fields
  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  void toggleConfirmPasswordVisibility() {
    isConfirmPasswordHidden.value = !isConfirmPasswordHidden.value;
  }

  // Handle registration logic
  void register() {
    if (email.isEmpty || username.isEmpty || password.isEmpty || confirmPassword.isEmpty) {
      Get.snackbar('Error', 'Please fill in all fields');
    } else if (password.value != confirmPassword.value) {
      Get.snackbar('Error', 'Passwords do not match');
    } else {
      // Perform registration logic here
      Get.snackbar('Success', 'Registered successfully');
    }
  }

  // Navigate to the login page
  void navigateToLogin() {
    Get.toNamed('/login');
  }
}
