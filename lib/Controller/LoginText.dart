import 'package:flutter/material.dart';

// access the api
import 'dart:convert';
import 'package:http/http.dart' as http;

// access the Textbox
import '../Screens/LoginPage/TextBoxEmail.dart';
import '../Screens/LoginPage/TextBoxPassword.dart';


class Logintext {
  final TextboxEmail textEmail = TextboxEmail(); // calling for the function
  final TextboxPassword textPassword = TextboxPassword(); 

  // late String email = textEmail.getEmail(); // store Data
  // late String password = textPassword.getPassword();
  late bool auth;
  
  
  Future<void> login(String email, String password) async {
    
    final url = Uri.parse('http://192.168.254.104:8080/api/testing');

    final response = await http.post(
      url,
      body: jsonEncode({
        'email': email,
        'password': password,
      }),
    );
    if (response.statusCode == 201){
      Map<bool, dynamic> data = jsonDecode(response.body);
      bool auth = data[true] as bool;
      return ;
    }
  }
  
}