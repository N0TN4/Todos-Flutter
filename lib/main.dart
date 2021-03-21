import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todos/views/login_screen/login_screen.dart';
import 'package:todos/views/register_screen/register_screen.dart';
import 'package:todos/views/todo_list_screen/todo_list_screen.dart';

import 'views/logged_out_screen/logged_out_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Todos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/todoListScreen',
      routes: {
        '/': (context) => LoggedOutScreen(),
        '/registerScreen': (context) => RegisterScreen(),
        '/loginScreen': (context) => LoginScreen(),
        '/todoListScreen': (context) => TodoListScreen(),
      },
    );
  }
}
