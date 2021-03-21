import 'package:get/get.dart';
import 'package:todos/models/task.dart';

class TodoListController extends GetxController {
  String fieldNameTask = "";
  List tasks = <Task>[].obs;
  List tasksDone = <Task>[].obs;
  addTask() {
    Task t = new Task(ativo: false, nome: this.fieldNameTask);
    this.tasks.add(t);
  }

  addTaskToDone(Task task) {
    tasks.remove(task);
    task.ativo = true;

    this.tasksDone.add(task);
  }
}
