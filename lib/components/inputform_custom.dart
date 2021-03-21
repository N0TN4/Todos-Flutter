import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputFormCustom extends StatelessWidget {
  final String? hintText;
  final String? value;
  final TextEditingController? ctrl;
  final Function(String)? onChanged;
  const InputFormCustom({
    Key? key,
    this.value,
    this.onChanged,
    this.ctrl,
    @required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController ctrl = new TextEditingController();
    return Container(
      child: TextFormField(
        style: TextStyle(color: Colors.black.withOpacity(0.88)),
        onChanged: onChanged,
        controller: ctrl,
        decoration: InputDecoration(
          hintText: hintText ?? "",
          hintStyle: TextStyle(height: 0, color: Colors.grey),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          isDense: false,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(color: Colors.black, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(color: Colors.black, width: 2),
          ),
        ),
      ),
    );
  }
}
