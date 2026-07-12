import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';


import '../Login/AuthStorage.dart';
class LeaveBalance{
  
  getLeave(data, type) async {
    if (await type == "annual"){
      return data["annual_leave"];
    }
  }

  Future<String> getBalanceLeave(type) async {
    final prefs = await SharedPreferences.getInstance();

    String? token = prefs.getString("token");
    String? userId = prefs.getString("id");
    print(userId);
    // print(token);

    final url = Uri.parse('http://192.168.254.104:8080/api/balance/$userId');

    final response = await http.get(
      url,
      headers: {
        "Authorization": "Bearer $token",
        "Accept": "application/json",
        "Content-Type": "application/json",
      },
    );
    print(response.body);
    if (response.statusCode == 200) {
      Map<int, dynamic> data = jsonDecode(response.body);
      return getLeave(data, type).toString();
    } else {
      throw Exception('Failed to load leave balance: ${response.statusCode}');
    }
  }
}