// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';

import 'package:crypto/crypto.dart';

extension Sh256Encoder on String {
  String toSh256() {
    var passToBytes = utf8.encode(this); // data being hashed
    var bytesToSha = sha256.convert(passToBytes);
    return bytesToSha.toString();
  }
}
