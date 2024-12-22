import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zodiverse/routing/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZodiVerse',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute:
          AppRoutes.login, // Set the initial route to the login screen
      getPages: AppRoutes.routes, // Define routes
    );
  }
}
