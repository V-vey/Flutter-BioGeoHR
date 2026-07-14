
// access the api
import 'dart:convert';
import 'package:http/http.dart' as http;

class GetLocation {

  Future<List<String>> getLocation() async {
    // List names;
    print("object 1");
    final url = Uri.parse('http://192.168.254.104:8080/api/location');
    print("object 2");
    final response = await http.get(
      url,
    );
    // Debug print to see what the server responds with
    print("Server Response Status Code: ${response.statusCode}");
    print("Server Response Body: ${response.body}");  
    // String name = makeList(jsonDecode(response.body));
    List<dynamic> data = jsonDecode(response.body);
    
    List<String> names = data.map((item) => item['name']?.toString() ?? 'Unknown').toList();
    
    print(names);
    return names;
  }
}