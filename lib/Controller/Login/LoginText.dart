import 'package:flutter/material.dart';

// access the api
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'AuthStorage.dart';

class Logintext {
  late String token;
  late String userId;
  final AuthStorage authStorage = AuthStorage();

  String getToken() {
    return token;
  }

  Future<bool> verifyData(data) async {
    bool auth = false;
    if (data["authenticated"] == true) {
      token = data["token"];
      userId = data["user"]["id"].toString();
      authStorage.saveUserId(userId);
      authStorage.saveToken(token);

      auth = true;
    }
    return auth;
  }

  Future<bool> login(String email, String password) async {
    final url = Uri.parse('http://192.168.254.104:8080/api/login');

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: jsonEncode({"email": email, "password": password}),
    );

    if (response.statusCode == 201) {
      bool isAuthenticated = await verifyData(jsonDecode(response.body));
      return isAuthenticated;
    }
    print(email + password);
    return false;
  }
}
