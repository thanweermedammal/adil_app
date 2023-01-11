import 'dart:convert';
import 'package:adil/helper/authhelper.dart';
import 'package:http/http.dart' as http;

class AuthFetch {
  Future<bool> authenticate(String? email, String? password) async {
    try {
      final response =
          await http.post(Uri.parse('http://adil.exouzia.in/api/login'), body: {
        'password': password,
        'email': email,
      });
      switch (response.statusCode) {
        case 200:
          final values = json.decode(response.body);
          AuthHelper().setUserData(values, email!, password!);
          return true;
          break;
        case 404:
          print("Something went wrong");
          return false;
          break;
        default:
          print(response.statusCode);
          print("Something ");
          return false;
          break;
      }
    } on Exception {
      return false;
    }
  }
}
