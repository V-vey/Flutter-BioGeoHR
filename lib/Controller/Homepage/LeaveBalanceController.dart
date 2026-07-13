import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';


import '../Login/AuthStorage.dart';
class LeaveBalance{
  
  getLeave(data, type) async {
    if (await type == "annual"){
      String annual = data['annual_leave'].toString();
      return annual;
    } else if (await type == 'sick') {
      String sick = data['sick_leave'].toString();
      return sick;
    } else if (await type == 'patern') {
      String patern = data['patternity_leave'].toString();
      return patern;
    } else if (await type == 'unpaid') {
      String unpaid = data['unpaid_leave'].toString();
      return unpaid;
    }
  }

  Future<dynamic> getBalanceLeave(type) async {
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
      return getLeave(jsonDecode(response.body), type);
    } else {
      throw Exception('Failed to load leave balance: ${response.statusCode}');
    }
  }
}