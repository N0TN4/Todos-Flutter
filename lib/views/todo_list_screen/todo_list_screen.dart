import 'package:flutter/material.dart';
import 'package:todos/components/components.dart';

class TodoListScreen extends StatefulWidget {
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  final myTxtStyle = TextStyle(fontSize: 13, fontWeight: FontWeight.w900);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.fromLTRB(16, 44, 16, 0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "To-do list",
                  style: TextStyle(fontSize: 36),
                ),
                SizedBox(
                  height: 32,
                ),
                Text("ADD A NEW TASK", style: myTxtStyle),
                SizedBox(
                  height: 13,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: InputFormCustom(
                        hintText: "My awesome task",
                      ),
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Expanded(
                      child: MainButton(
                        onTap: () {},
                        text: '+',
                        txtSize: 36,
                        width: 62,
                        height: 52,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 39,
                ),
                Text("TASKS", style: myTxtStyle),
                CheckboxTxt(
                  value: true,
                  txt: "Task 1",
                  onChanged: () {},
                ),
                CheckboxTxt(
                  value: true,
                  txt: "Task 2",
                  onChanged: () {},
                ),
                SizedBox(
                  height: 165,
                ),
                Text("DONE", style: myTxtStyle),
                CheckboxTxt(
                  value: true,
                  txt: "Task 5",
                  onChanged: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
