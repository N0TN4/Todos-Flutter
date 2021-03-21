import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:todos/components/components.dart';
import 'package:todos/controllers/todo_list_controller.dart';
import 'package:todos/models/task.dart';

class TodoListScreen extends StatefulWidget {
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  final myTxtStyle = TextStyle(fontSize: 13, fontWeight: FontWeight.w900);
  TextEditingController _txtCtrl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final TodoListController _ctrl = Get.put(TodoListController())!;
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
                        ctrl: _txtCtrl,
                        onChanged: (txt) {
                          _ctrl.fieldNameTask = txt;
                        },
                      ),
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Expanded(
                      child: MainButton(
                        onTap: () {
                          _ctrl.addTask();
                        },
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
                Obx(() => ListView.builder(
                    itemCount: _ctrl.tasks.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (_, index) {
                      return CheckboxTxt(
                        value: _ctrl.tasks[index].ativo,
                        txt: _ctrl.tasks[index].nome,
                        onChanged: () {
                          _ctrl.addTaskToDone(_ctrl.tasks[index]);
                        },
                      );
                    })),
                CheckboxTxt(
                  value: true,
                  txt: "Task 2",
                  onChanged: () {},
                ),
                SizedBox(
                  height: 165,
                ),
                Text("DONE", style: myTxtStyle),
                Obx(() => ListView.builder(
                    itemCount: _ctrl.tasksDone.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (_, index) {
                      return CheckboxTxt(
                        value: _ctrl.tasksDone[index].ativo,
                        txt: _ctrl.tasksDone[index].nome,
                        onChanged: () {
                          _ctrl.addTaskToDone(_ctrl.tasksDone[index]);
                        },
                      );
                    })),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
