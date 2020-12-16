import 'dart:async';
import 'package:http/http.dart' as http;

Future<String> apiCall(String id) async {
  http.Response response = await http.get(
    Uri.encodeFull(""),
  );
  print("Respone ${response.body.toString()}");
  return response.body;
}
