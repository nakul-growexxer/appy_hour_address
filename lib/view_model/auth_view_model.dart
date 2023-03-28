// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:appy_hour_address/to_sha256.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class AuthViewModel extends ChangeNotifier {
  //
  AuthViewModel() {
    email.clear();
    password.clear();
  }

  static AuthViewModel of(BuildContext context) =>
      Provider.of<AuthViewModel>(context, listen: false);

  //formkey
  final formKey = GlobalKey<FormState>();
  //Text Controller
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  void login() async {
    try {
      Response response = await post(
          Uri.parse('https://api.dev.appy-hour.com/auth/signin'),
          body: {'email': email.text, 'password': password.text.toSh256()});

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print(data['status']);
        print(data['data']['token']);
        print('Login successfully');
      } else {
        print('failed');
      }
    } catch (e) {
      print(e.toString());
    }
  }

  void logout() async {
    try {
      Response response = await delete(
        Uri.parse('https://api.dev.appy-hour.com/user/logout'),
      );
      // response.headers.addAll(
      //   "token" :
      // );
      if (response.statusCode == 200) {
        print("Logged out");
      } else {
        print("logout failed");
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
