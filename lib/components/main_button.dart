import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final Function? onTap;
  final String? text;
  final Color? color;
  final Color? txtColor;
  final double? width;
  final double? height;
  const MainButton(
      {Key? key,
      @required this.onTap,
      @required this.text,
      this.color,
      this.txtColor,
      this.height,
      this.width})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        return onTap!();
      },
      child: Container(
        width: width ?? 167,
        height: height ?? 52,
        decoration: BoxDecoration(
          color: color ?? null,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(width: 2),
        ),
        child: Center(
          child: Text(
            text!.toUpperCase(),
            style: TextStyle(
              color: txtColor ?? Colors.black,
              fontWeight: FontWeight.w900,
              fontSize: 13,
            ),
          ),
        ),
      ),
    );
  }
}
