import 'package:flutter/material.dart';
import 'package:todos/components/components.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarCustom(),
              Text(
                "Register",
                style: TextStyle(fontSize: 36),
              ),
              SizedBox(
                height: 32,
              ),
              InputFormCustom(
                hintText: "Enter your email here",
              ),
              SizedBox(
                height: 16,
              ),
              InputFormCustomPassword(
                hintText: "Enter your password here",
              ),
              SizedBox(
                height: 16,
              ),
              MainButton(
                width: double.infinity,
                height: 52,
                onTap: () {},
                color: Colors.black,
                txtColor: Colors.white,
                text: "Next",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
