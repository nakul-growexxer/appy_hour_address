// ignore_for_file: constant_identifier_names

import 'dart:async';

import 'package:appy_hour_address/view/login.dart';
import 'package:appy_hour_address/view/manage_address.dart';
import 'package:appy_hour_address/view_model/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<AuthViewModel>(
        create: (_) => AuthViewModel(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  static const String KEYLOGIN = "login";

  @override
  void initState() {
    super.initState();
    whereToGO();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Icon(Icons.home)),
    );
  }

  void whereToGO() async {
    var sharedPref = await SharedPreferences.getInstance();
    var isLogin = sharedPref.getBool(KEYLOGIN);

    Timer(const Duration(seconds: 2), () {
      if (isLogin != null) {
        if (isLogin) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) {
              return const ManageAddress();
            }),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) {
              return const LoginView();
            }),
          );
        }
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) {
            return const LoginView();
          }),
        );
      }
    });
  }
}
