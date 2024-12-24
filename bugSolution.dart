```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);

      if (jsonData.isNotEmpty) {
        for (var item in jsonData) {
          final String? name = item['name'];
          final int? age = item['age'];
          if (name != null && age != null) {
              print('Name: $name, Age: $age');
          } else {
            print('Incomplete data found: $item'); //Handle incomplete data gracefully
          }
        }
      } else {
          print('JSON data is empty.');
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```