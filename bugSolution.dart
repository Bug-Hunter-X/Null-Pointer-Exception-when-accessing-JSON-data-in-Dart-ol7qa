```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List<dynamic>;

      // Using safe null navigation to handle potential null values
      final firstItemName = jsonData.isNotEmpty ? jsonData[0]['name'] : 'Name not found';
      print(firstItemName);

      // Alternative, more explicit approach with null checks
      if(jsonData.isNotEmpty && jsonData[0].containsKey('name')){
        final name = jsonData[0]['name'];
        print(name);
      } else {
        print('Name not found');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```