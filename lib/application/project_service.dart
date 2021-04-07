import 'package:manager/application/task_view.dart';
import 'package:manager/domain/project.dart';
import 'package:manager/domain/projects.dart';
import 'package:manager/domain/task.dart';

class ProjectsService {
  final Projects projects;
  ProjectsService(this.projects);

  String? newProject(String name) {
    Project project = Project(name);
    projects.add(project);
    return project.id;
  }

  void addTask(String projectId, String task) {
    projects.get(projectId).addTask(Task(task));
  }

  List<TaskView>? listTasks(String projectId) {
    Project project = this.projects.get(projectId);
    var tasks = project.tasks;
    var view = tasks.map((e) => TaskView(e.name, projectId)).toList();
    return view;
  }
}
