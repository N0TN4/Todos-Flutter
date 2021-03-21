import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {
  final Function? onTap;

  const AppBarCustom({Key? key, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: InkWell(
        onTap: () {
          return onTap ?? Navigator.of(context).pop();
        },
        child: Container(
          width: 20,
          height: 20,
          child: Image.asset(
            'assets/images/back_button.png',
            width: 12,
            height: 12,
          ),
        ),
      ),
    );
  }
}
