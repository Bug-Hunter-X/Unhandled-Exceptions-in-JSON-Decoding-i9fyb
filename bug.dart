```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON array
      final List<dynamic> jsonData = jsonDecode(response.body);
      // Accessing elements without checking for null or out-of-bounds
      final String name = jsonData[0]['name']; //Potential error here
      final int age = jsonData[0]['age']; //Potential error here
      print('Name: $name, Age: $age');
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```