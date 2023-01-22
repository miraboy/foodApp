import 'package:FoodApp/screens/login_page.dart';
import 'package:FoodApp/screens/register.dart';
import 'package:flutter/material.dart';
import 'screens/accueil.dart';
import 'screens/food.dart';
import 'screens/onboarding.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FoodApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      // ignore: prefer_const_literals_to_create_immutables
      routes:  {
        '/home':(context) => home(),
        '/login':(context) => login(),
        '/register':(context) => Register(),
        '/foods':(context) => food(),
        '/onboarding':(context) => Onboarding(),
      },
      home: const accueil(),
    );
  }
}

class accueil extends StatelessWidget {
  const accueil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: home(),
    );
  }
}
