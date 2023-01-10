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
    // 'Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJYYUlKbGozZEhlOEQ4V3U2SnE3LVM5dnlsVmlDQlJJb3B1NTlWZmR0NTRzIn0.eyJleHAiOjE2NzMzOTA1ODUsImlhdCI6MTY3MzM1NDU4NSwianRpIjoiMGIzYmUwOTYtZDQyMi00NzZiLWE5ZWMtNDFjZDYxNDY3YWM1IiwiaXNzIjoiaHR0cHM6Ly9hY2NvdW50LXFhLmZ5eHQuY29tL2F1dGgvcmVhbG1zL3plcm8tZHJhbWEtcWEiLCJhdWQiOlsidGVzdC1sb2dpbi1zIiwicmVhbG0tbWFuYWdlbWVudCIsImFjY291bnQiXSwic3ViIjoiZGVtb3BtMTIzQGdtYWlsLmNvbSIsInR5cCI6IkJlYXJlciIsImF6cCI6InRlc3QtbG9naW4tcyIsInNlc3Npb25fc3RhdGUiOiJjYmE3ODYwZS1lNTFiLTQ0NDktODg1MC1iYTI3MTE0NTM2YmIiLCJhY3IiOiIxIiwiYWxsb3dlZC1vcmlnaW5zIjpbIioiLCJodHRwOi8vbG9jYWxob3N0OjQyMDAiXSwicmVhbG1fYWNjZXNzIjp7InJvbGVzIjpbIm9mZmxpbmVfYWNjZXNzIiwiZGVmYXVsdC1yb2xlcy16ZXJvLWRyYW1hLXFhIiwidW1hX2F1dGhvcml6YXRpb24iXX0sInJlc291cmNlX2FjY2VzcyI6eyJyZWFsbS1tYW5hZ2VtZW50Ijp7InJvbGVzIjpbInZpZXctcmVhbG0iLCJ2aWV3LWlkZW50aXR5LXByb3ZpZGVycyIsIm1hbmFnZS1pZGVudGl0eS1wcm92aWRlcnMiLCJpbXBlcnNvbmF0aW9uIiwicmVhbG0tYWRtaW4iLCJjcmVhdGUtY2xpZW50IiwibWFuYWdlLXVzZXJzIiwicXVlcnktcmVhbG1zIiwidmlldy1hdXRob3JpemF0aW9uIiwicXVlcnktY2xpZW50cyIsInF1ZXJ5LXVzZXJzIiwibWFuYWdlLWV2ZW50cyIsIm1hbmFnZS1yZWFsbSIsInZpZXctZXZlbnRzIiwidmlldy11c2VycyIsInZpZXctY2xpZW50cyIsIm1hbmFnZS1hdXRob3JpemF0aW9uIiwibWFuYWdlLWNsaWVudHMiLCJxdWVyeS1ncm91cHMiXX0sImFjY291bnQiOnsicm9sZXMiOlsibWFuYWdlLWFjY291bnQiLCJtYW5hZ2UtYWNjb3VudC1saW5rcyIsInZpZXctcHJvZmlsZSJdfX0sInNjb3BlIjoiZW1haWwgdGVzdC1sb2dpbi1zIHByb2ZpbGUiLCJzaWQiOiJjYmE3ODYwZS1lNTFiLTQ0NDktODg1MC1iYTI3MTE0NTM2YmIiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwibmFtZSI6ImthdGhpcmVzaDEgVGVzdCIsInByZWZlcnJlZF91c2VybmFtZSI6ImRlbW9wbTEyM0BnbWFpbC5jb20iLCJnaXZlbl9uYW1lIjoia2F0aGlyZXNoMSIsImZhbWlseV9uYW1lIjoiVGVzdCIsImVtYWlsIjoiZGVtb3BtMTIzQGdtYWlsLmNvbSIsInVzZXJfaWRfcmVtb3RlIjoiMmVkZjIxMzUtNzUyMi00NGI5LTk5ODQtOWZmZDdkODljY2IyIn0.nYRYtw9s0lEbmT_KtGcJO_Mw8GC9Cy6SqjIpeoI0_kYQybHPr9tPE0jZFq02ZcmCy2ShE8BdxugzMEfnfwLH1F5DTigE6fxyleZl5ZI3BTlOCdhYwqCqd0W3b-HmhLcea-1qvZIDuOu0rf7pIxXnjP2IjWW9UNcZxaHBDi7IrY7NaqEyJnnWCHTtw6Ex6P6foQ9D5X2ZUJkrcYZV0qwyVnHqSflR7oiXHDxYHSZn_bUixLYxonf9eGJ8YWEke9cf0ofYjXy-2t8WBbC-w_oFXekv5izUOQiXFl3mDExr0XX_mzBs4ZZAE7H0QitT-OTIowi7jEIzuy6HS10AUTECgA'
    //'Authorization':'authtoken'
  };
}
