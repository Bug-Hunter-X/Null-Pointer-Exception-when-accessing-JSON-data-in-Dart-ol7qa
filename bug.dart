```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON array
      final jsonData = jsonDecode(response.body) as List<dynamic>;

      // Incorrect handling of potential null values
      final firstItem = jsonData[0]['name']; // potential error: jsonData might be empty or the first element lack 'name' key
      print(firstItem);

      // Better way to handle null values
      final firstItemName = jsonData.isNotEmpty && jsonData[0].containsKey('name') ? jsonData[0]['name'] : 'Name not found';
      print(firstItemName);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```