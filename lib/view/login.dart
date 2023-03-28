// ignore_for_file: use_build_context_synchronously

import 'package:appy_hour_address/main.dart';
import 'package:appy_hour_address/view/manage_address.dart';
import 'package:appy_hour_address/view_model/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    AuthViewModel model = AuthViewModel.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Login Page"),
      ),
      body: Form(
        key: model.formKey,
        autovalidateMode: AutovalidateMode.always,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  key: const Key("email"),
                  controller: model.email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: "Email",
                    hintText: "Enter Email",
                    suffixIcon: Icon(
                      Icons.email,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  key: const Key("password"),
                  controller: model.password,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: "Password",
                    hintText: "Enter Password",
                    suffixIcon: Icon(
                      Icons.password,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 100,
                child: TextButton(
                  key: const Key("login_btn"),
                  onPressed: () async {
                    if (model.formKey.currentState!.validate()) {
                      model.login();
                      var sharedPref = await SharedPreferences.getInstance();
                      sharedPref.setBool(SplashScreenState.KEYLOGIN, true);
                      await Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const ManageAddress();
                          },
                        ),
                      );
                    } else {
                      //alert
                    }
                  },
                  child: const Text(
                    "Login Here",
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
