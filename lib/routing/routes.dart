import 'package:get/get.dart';
import 'package:zodiverse/view/register_screen.dart';

import '../view/login_screen.dart';

class AppRoutes {
  static const login = '/login';
  static const home = '/home';
  static const register = '/register';


  static final routes = [
    GetPage(name: login, page: () => LoginScreen()),
    GetPage(name: register, page: () => RegisterScreen()),
    // Add your other routes here
  ];
}
