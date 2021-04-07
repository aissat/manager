import 'package:flutter_test/flutter_test.dart';
import 'package:manager/domain/project.dart';
import 'package:manager/domain/task.dart';

main() {
  late Project project;

  setUp(() {
    project = Project('Project Management App');
  });

  test("should have default null identity", () {
    expect(project.id, isNull);
  });

  test(' should list tasks ', () {
    final task = Task('Write tests before code');
    var tasks = <Task>[task];
    project.addTask(task);

    expect(project.tasks, tasks);
  });
}
