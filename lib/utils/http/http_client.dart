import 'dart:convert';

import 'package:http/http.dart' as http;

class EHttpHelper {
  static const String _base_url = "http://localhost:3000";

  // Helper method to make GET request
  static Future<Map<String, dynamic>> get(String endpoint) async {
    try {
      final response = await http.get(Uri.parse('$_base_url/$endpoint'));
      return _handleResponse(response);
    } catch (e) {
      return {'error': e.toString()};
    }
  }

  // Helper method to make POST request
  static Future<Map<String, dynamic>> post(String endpoint, dynamic body) async {
    try {
      final response = await http.post(
        Uri.parse('$_base_url/$endpoint'),
        body: json.encode(body),
        headers: {'Content-Type': 'application/json'},
      );
      return _handleResponse(response);
    } catch (e) {
      return {'error': e.toString()};
    }
  }

  // Helper method to make PUT request
  static Future<Map<String, dynamic>> put(String endpoint, dynamic body) async {
    try {
      final response = await http.put(
        Uri.parse('$_base_url/$endpoint'),
        body: json.encode(body),
        headers: {'Content-Type': 'application/json'},
      );
      return _handleResponse(response);
    } catch (e) {
      return {'error': e.toString()};
    }
  }

  // Helper method to make DELETE request
  static Future<Map<String, dynamic>> delete(String endpoint) async {
    try {
      final response = await http.delete(Uri.parse('$_base_url/$endpoint'));
      return _handleResponse(response);
    } catch (e) {
      return {'error': e.toString()};
    }
  }

  // Helper method to handle response
  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      return {'error': 'Request failed with status: ${response.statusCode}'};
    }
  }
}
