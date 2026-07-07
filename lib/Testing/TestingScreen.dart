import 'package:flutter/material.dart';
import '../Service/employee_service.dart';
import 'package:http/http.dart' as http;

class TestingScreen extends StatefulWidget {
  TestingScreen({super.key});

  @override
  State<TestingScreen> createState() => _TestingScreenState();
}

class _TestingScreenState extends State<TestingScreen> {
  final employeeService = EmployeeService();

  String _msg = "Fucking Data";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Testing Screen Fuck')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_msg),
            ElevatedButton(
              onPressed: () {getMsg();},
              child: const Text('Get Data'),
            ),
          ],
        )

      ),
    );
  }
  void getMsg() async {
    String url = "http://192.168.254.104:8080/api/login";
    http.Response response = await http.post(Uri.parse(url), body: {
      "email": "test@example.com",
      "password": "test"
    });

    if(response.statusCode == 201){
      setState(() {
        _msg = response.body;
      });
    } else {
      setState(() {
        _msg = "Error: ${response.statusCode}";
      });
    }
  }
}