import 'package:flutter/material.dart';
import 'package:todos/components/main_button.dart';

class LoggedOutScreen extends StatefulWidget {
  @override
  _LoggedOutScreenState createState() => _LoggedOutScreenState();
}

class _LoggedOutScreenState extends State<LoggedOutScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Stack(
            children: [
              Image.asset(
                'assets/images/background_login.png',
                fit: BoxFit.contain,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
              Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
        bottomSheet: Container(
          width: double.infinity,
          height: 105,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Expanded(
                child: MainButton(
                  onTap: () => Navigator.pushNamed(context, '/loginScreen'),
                  text: "LOG IN",
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: MainButton(
                  onTap: () => Navigator.pushNamed(context, '/registerScreen'),
                  text: "REGISTER",
                  color: Colors.black,
                  txtColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
