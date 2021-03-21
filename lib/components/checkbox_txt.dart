import 'package:flutter/material.dart';

class CheckboxTxt extends StatelessWidget {
  final String? txt;
  final bool? value;
  final Function? onChanged;

  const CheckboxTxt(
      {Key? key, this.txt, @required this.value, @required this.onChanged})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 13),
      child: Row(
        children: [
          SizedBox(
            height: 32,
            width: 32,
            child: Checkbox(
              value: value ?? false,
              onChanged: (e) => onChanged!(),
              activeColor: Colors.black,
            ),
          ),
          SizedBox(
            width: 13,
          ),
          Text(txt!, style: TextStyle(fontSize: 15)),
        ],
      ),
    );
  }
}
