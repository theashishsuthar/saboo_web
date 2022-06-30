import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:saboo_web/widgets/logger.dart';
import 'package:http/http.dart' as http;

class SignUpController extends GetxController {
  void signup(
    String name,
    String email,
    String mobileNumber,
    String password,
  ) async {
    String url = 'https://saboo.io/public/api/auth/signup';
    try {
      var response = await http.post(
        Uri.parse(url),
        headers: <String, String>{
          'Accept': 'application/json',
        },
        body: {
          'name': name,
          'email': email,
          'phone_number': mobileNumber,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        logger.i('Account Created SuccessFully');
        logger.i(response.body);
      } else {
        logger.i('An Error has occured to Create Account');
      }
    } catch (e) {
      logger.d(e.toString());
    }
  }

  void adminLogin(String email, String password) async {
    String url = 'https://saboo.io/public/api/auth/admin_login';
    try {
      var response = await http.post(Uri.parse(url), headers: <String, String>{
        // 'Content-Type': 'application/json',
        'Accept': 'application/json ',
      }, body: {
        'email': email,
        'password': password,
      });
      if (response.statusCode == 200) {
        logger.i('Admin Login SuccessFully');

        logger.i(response.body);
      } else {
        logger.d('Error has occured');
      }
    } catch (e) {
      logger.i(
        e.toString(),
      );
    }
  }
}
