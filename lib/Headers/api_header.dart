import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Header {
  static get token => null;
  @override
  void initState() {
    Future<String?> token = FlutterSecureStorage().read(key: 'jwt');
    print("token is here");
    print(token);
  }

  static Map<String, String> baseHeader = {
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Credentials': 'true',
    'Access-Control-Allow-Headers': 'Content-Type',
    'Access-Control-Allow-Methods': 'GET'
  };
  static Map<String, String> tenantHeader = {
    'Content-Type': 'application/json',
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Credentials': 'true',
    'Access-Control-Allow-Headers': 'Content-Type',
    'Access-Control-Allow-Methods': '*',
    'Authorization': '$token'
  };
}
