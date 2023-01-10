import 'dart:convert';

import 'package:fyxt/Constants/api_constant.dart';
import 'package:http/http.dart' as http;
import 'package:fyxt/Models/loginscreen_model.dart';
import 'package:fyxt/Headers/api_header.dart';

class ApiIntergration {
  int? configId;
  String? configName;
  String? address;

  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
    final response = await http.post(Uri.parse(Constants.baseUrl),
        body: requestModel.toJson(), headers: Header.baseHeader);
    print(response.body);
    if (response.statusCode == 200 || response.statusCode == 400) {
      return LoginResponseModel.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception('Failed to load data!');
    }
  }
}
