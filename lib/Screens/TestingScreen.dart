import 'package:flutter/material.dart';
import '../Service/employee_service.dart';

class EmployeeScreen extends StatelessWidget {
  EmployeeScreen({super.key});

  final employeeService = EmployeeService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Employees')),
      body: FutureBuilder(
        future: employeeService.getEmployees(),
        builder: (context, snapshot) {

          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final employees = snapshot.data!;

          return ListView.builder(
            itemCount: employees.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  employees[index]['name'],
                ),
              );
            },
          );
        },
      ),
    );
  }
}