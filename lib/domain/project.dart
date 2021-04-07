import 'package:manager/domain/task.dart';

class Project {
  String? _id;
  final String name;
  List<Task> _tasks = [];

  Project(this.name);

  set id(String? id) => this._id = id;
  String? get id => _id;

  List<Task> get tasks => _tasks;

  void addTask(Task task) => _tasks.add(task);
}
