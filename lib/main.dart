import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kisii/screens/homePage.dart';
import 'package:kisii/screens/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isLoggedIn = false;

  @override
  void initState() {
    super.initState();
    checkLoginStatus();
  }

  void checkLoginStatus() async {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });

    var headers = {'Cookie': 'PHPSESSID=nf08rjdfadbg5mklfquvub3ldc; path=/'};
    var request = http.Request('GET',
        Uri.parse('https://kisiiuniversity.000webhostapp.com/check_login.php'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var responseBody = await utf8.decodeStream(response.stream);
      var decodedResponse = json.decode(responseBody);
      if (decodedResponse['login_status'] == true) {
        print(decodedResponse['login_status']);
        _isLoggedIn = true;
      } else if (decodedResponse['login_status'] == false) {
        _isLoggedIn = false;
      } else {
        print('Unknown login status.');
      }
    } else {
      print('Error: ${response.reasonPhrase}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Text('hi'),
      // home: _isLoggedIn ? MyHome() : LoginPage(),
    );
  }
}
