import 'package:flutter/material.dart';
import 'package:todos/views/login_screen/login_screen.dart';
import 'package:todos/views/register_screen/register_screen.dart';

import 'views/logged_out_screen/logged_out_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoggedOutScreen(),
        '/registerScreen': (context) => RegisterScreen(),
        '/loginScreen': (context) => LoginScreen(),
      },
    );
  }
}
