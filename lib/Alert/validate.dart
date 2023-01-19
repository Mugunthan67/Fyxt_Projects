import 'dart:convert';
import 'package:http/http.dart' as http;

import '../Constants/api_constant.dart';

Future<String> validateCredentials(String email, String password) async {
  // Make a POST request to your server to validate the email and password
  var response = await http.post(Uri.parse(Constants.baseUrl),
      body: {'email': email, 'password': password});

  // Parse the JSON response
  var data = jsonDecode(response.body);

  // Check if the validation was successful
  if (data['status'] == 'success') {
    return 'Validation successful';
  } else {
    return ' ${data['error']}';
  }
}
