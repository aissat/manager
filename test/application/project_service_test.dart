import 'package:flutter_test/flutter_test.dart';
import 'package:manager/application/project_service.dart';
import 'package:manager/application/task_view.dart';
import 'package:manager/infrastructure/persistence/fake/fake_projects.dart';

main() {
  late ProjectsService projectsService;

  setUp(() {
    projectsService = ProjectsService(FakeProjects());
  });

  test('should add tasks to aproject', () {
    String? projectId = projectsService.newProject('Micro testing');
    projectsService.addTask(projectId!, 'TDD in Dart');
    var actual = projectsService.listTasks(projectId);
    var expected = [TaskView('TDD in Dart', projectId)];
    expect(actual, expected);
  });
}
