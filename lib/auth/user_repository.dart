import 'dart:convert';

import 'package:appy_hour_address/model/user.dart';
import 'package:appy_hour_address/storage_constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserRepository extends ChangeNotifier {
  User? currentUser;

  UserRepository({
    this.currentUser,
  });

  User get getUser => currentUser ?? User();

  static UserRepository of(BuildContext context) =>
      Provider.of<UserRepository>(context, listen: false);

  static Future<User> fetchUserData() async {
    final prefs = await SharedPreferences.getInstance();
    return User.fromJson(
        jsonDecode(prefs.getString(StorageConstant.userStorage) ?? "{}"));
  }
}
