import 'package:get/get.dart';
import 'package:zodiverse/view/home_screen.dart';
import 'package:zodiverse/view/register_screen.dart';

import '../view/login_screen.dart';

class AppRoutes {
  static const login = '/login';
  static const home = '/home';
  static const register = '/register';

  static final routes = [
    GetPage(
      name: login,
      page: () => LoginScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: register,
      page: () => RegisterScreen(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: home,
      page: () => HomeScreen(),
      transition: Transition.downToUp,
    ),
  ];
}
