import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'api.dart';

class AuthService {
  static Future<String> signIn(String username, String password) async {
    print(username);
    print(password);
    final response = await http.post(
      Uri.parse(Api.loginUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'username': username,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);
      final token = responseData['token'];

      // Stockage du token d'authentification dans le stockage local
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('auth_token', token);
      print(token);
      return token;
    } else {
      throw Exception('Échec de la connexion');
    }
  }

  static Future<String> signUp(
      String lastName,
      String firstName,
      String email,
      String phoneNumber,
      String username,
      String password,
      String address) async {
    final response = await http.post(
      Uri.parse(Api.createAccountUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: {
        "lastName": lastName,
        "firstName": firstName,
        "email": email,
        "phoneNumber": phoneNumber,
        "username": username,
        "password": password,
        "address": address,
        "objetDtoList": []
      },
    );

    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);

      return responseData;
    } else {
      throw Exception('Échec de la connexion');
    }
  }

  Future<void> signOut() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
  }
}
