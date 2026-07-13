import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Logout {

  Future<String> logoutUser() async {
    final prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString("token");
    String? userId = prefs.getString("id");

    final url = Uri.parse('http://192.168.254.104:8080/api/logout');
    //Remove From Database  
    final response = await http.post(
      url,
      headers: {
        "Authorization": "Bearer $token",
        "Accept": "application/json",
        "Content-Type": "application/json",
      },
      body: jsonEncode({
        "id": userId, // Passes the ID to the backend if needed
      }),
    );

    //Remove Stored User
    prefs.remove('id');
    prefs.remove('token');

    return response.body;
  }
}
