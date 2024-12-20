import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view_model/register_screen_controller.dart';

class RegisterScreen extends StatelessWidget {
  final RegisterController controller = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF1F4247),
              Color(0xFF0D1D23),
              Color(0xFF09141A),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              // AppBar with back button
              GestureDetector(
                onTap: () => Get.back(),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back, color: Colors.white),
                    SizedBox(width: 8),
                    Text(
                      'Back',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              // Register Title
              Text(
                'Register',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40),
              // Email Text Field
              TextField(
                onChanged: (value) => controller.email.value = value,
                decoration: InputDecoration(
                  labelText: 'Enter Email',
                  labelStyle: TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 16),
              // Username Text Field
              TextField(
                onChanged: (value) => controller.username.value = value,
                decoration: InputDecoration(
                  labelText: 'Create Username',
                  labelStyle: TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 16),
              // Password Text Field
              Obx(() => TextField(
                onChanged: (value) => controller.password.value = value,
                obscureText: controller.isPasswordHidden.value,
                decoration: InputDecoration(
                  labelText: 'Create Password',
                  labelStyle: TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      controller.isPasswordHidden.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.white,
                    ),
                    onPressed: controller.togglePasswordVisibility,
                  ),
                ),
                style: TextStyle(color: Colors.white),
              )),
              SizedBox(height: 16),
              // Confirm Password Text Field
              Obx(() => TextField(
                onChanged: (value) => controller.confirmPassword.value = value,
                obscureText: controller.isConfirmPasswordHidden.value,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  labelStyle: TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      controller.isConfirmPasswordHidden.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.white,
                    ),
                    onPressed: controller.toggleConfirmPasswordVisibility,
                  ),
                ),
                style: TextStyle(color: Colors.white),
              )),
              SizedBox(height: 32),
              // Register Button
              SizedBox(
                width: double.infinity,
                child: GestureDetector(
                  onTap: controller.register,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF62CDCB),
                          Color(0xFF4599DB),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24),
              // Login Link
              Center(
                child: GestureDetector(
                  onTap: controller.navigateToLogin,
                  child: RichText(
                    text: TextSpan(
                      text: 'Have an account? ',
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: 'Login here',
                          style: TextStyle(
                            color: Colors.teal,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
