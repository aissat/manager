import 'package:manager/domain/project.dart';
import 'package:manager/domain/projects.dart';

class FakeProjects implements Projects {
  Map<String, Project> _projects = <String, Project>{};

  @override
  void add(Project project) {
    var key = _projects.length.toString();
    project.id = key;
    _projects.putIfAbsent(key, () => project);
  }

  @override
  Project get(String projectId) => _projects[projectId]!;
}
