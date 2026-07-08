import 'package:flutter/material.dart';

// access the api
import 'dart:convert';
import 'package:http/http.dart' as http;

class Logintext {
  
  Future<bool> login(String email, String password) async {

    final url = Uri.parse('http://192.168.254.104:8080/api/login');
    
    final response = await http.post(
      url,
      headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      body: jsonEncode({
        "email": email,
        "password": password,
      }),
    );

    // Debug print to see what the server responds with
    print("Server Response Status Code: ${response.statusCode}");
    print("Server Response Body: ${response.body}");  

    if (response.statusCode == 201) {
      return true;
      
    }
    print(email + password);
    return false;
  }
  
}