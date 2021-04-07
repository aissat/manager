import 'package:flutter_test/flutter_test.dart';
import 'package:manager/domain/project.dart';
import 'package:manager/domain/projects.dart';
import 'package:manager/infrastructure/persistence/fake/fake_projects.dart';

main() {
  late Projects projects;

  setUp(() {
    projects = FakeProjects();
  });

  test('should identify a project', () {
    var project = Project('Project management app');
    projects.add(project);
    expect(project.id, isNotNull);
  });

  test('should get save project', () {
    var project = Project('Project management app');
    projects.add(project);
    var persisted = projects.get(project.id!);
    expect(persisted.id, project.id!);
  });
}
