```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      return jsonData;
    } else {
      //More specific error handling based on status code
      throw Exception('API request failed with status: ${response.statusCode}. Response body: ${response.body}');
    }
  } on http.ClientException catch (e) {
    // Handle client exceptions (e.g., network issues)
    print('Network error: $e');
    return null; //Or throw a custom exception
  } on FormatException catch (e) {
    //Handle JSON decoding errors
    print('JSON decoding error: $e');
    return null; //Or throw a custom exception
  } catch (e) {
    print('An unexpected error occurred: $e');
    rethrow; // Re-throw for handling by higher level functions
  }
}
```